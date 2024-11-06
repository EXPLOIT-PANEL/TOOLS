#!/bin/bash
function autoketik {
    text="$1"
    color="$2"
    for ((i=0; i<${#text}; i++)); do
        echo -n -e "${color}${text:i:1}"
        sleep 0.001 # Durasi delay antar karakter
    done
    echo
}

bold="\033[1m"
ncol="\033[0m"

# Color variables
red='\033[0;31m'
green='\033[0;32m'
yellow='\033[0;33m'
blue='\033[0;34m'
magenta='\033[0;35m'
cyan='\033[0;36m'

clear
banner="${cyan}
===================================================${ncol}
${red}███████╗██╗░░██╗██████╗░██╗░░░░░░█████╗░██╗████████╗
██╔════╝╚██╗██╔╝██╔══██╗██║░░░░░██╔══██╗██║╚══██╔══╝
█████╗░░░╚███╔╝░██████╔╝██║░░░░░██║░░██║██║░░░██║░░░
██╔══╝░░░██╔██╗░██╔═══╝░██║░░░░░██║░░██║██║░░░██║░░░
███████╗██╔╝╚██╗██║░░░░░███████╗╚█████╔╝██║░░░██║░░░
╚══════╝╚═╝░░╚═╝╚═╝░░░░░╚══════╝░╚════╝░╚═╝░░░╚═╝
${ncol}${yellow}CREATED BY ./EXPLOIT INDEPENDENT ft Mr 4REX 503
${cyan}==================================================="

echo -e "${banner}"
read -p "Masukkan nama Anda: " nama_user
echo "$nama_user" > user.txt
echo "HAPPY HACKING :)"
echo -e "${red}${bold}"

clear
autoketik "INSTALL BAHAN NYA GANTENG" "${green}"
pkg update && pkg upgrade -y
apt update && apt upgrade -y
pkg install git python python2 python3 sox mpv golang nala bash libwebp nodejs ffmpeg wget imagemagick curl ruby make clang screen -y
pip install --upgrade pip setuptools
apt install python-pip mpv -y
pip install rich rich-cli phonenumbers carrier geocoder pytube pyfiglet
pip install configparser
gem install lolcat

clear
autoketik "NEXT BAHAN INSTALL BERIKUTNYA" "${yellow}"
autoketik "BRO KALO DI TOOLS GAK BISAKE BUKA INSTALL LAGI YA I LOVE YOU" "${green}"

sleep 10
git clone https://github.com/cracker911181/Cracker-Tool
sleep 3
clear
git clone --depth=1 https://github.com/htr-tech/zphisher.git
sleep 3
clear
git clone https://github.com/remo7777/T-Header.git
sleep 3
clear
git clone https://github.com/techchipnet/CamPhish
clear
git clone https://github.com/EXPLOIT-PANEL/TIDTOD-BANNED-.git
clear
sleep 3
git clone https://github.com/thewhiteh4t/seeker.git && cd seeker/ && bash install.sh
clear
git clone https://github.com/AzeemIdrisi/PhoneSploit-Pro.git && cd PhoneSploit-Pro/ && pip install -r requirements.txt
clear
git clone --depth=1 https://github.com/termuxhackers-id/SARA && cd SARA && bash install.sh 
clear
cd seeker
mv -f SARA $HOME/TOOLS
clear
autoketik "KALO ADA YANG EROR DI TOOLS MENU BERARTI SCRIPT NYA BELUM TER INSTALL" "${red}"
sleep 4

autoketik "done sayang......" "${green}"
sleep 4
chmod +x Belajar.sh
./Belajar.sh

