#!/bin/bash

bold="\033[1m"
ncol="\033[0m"

# Color variables
red='\033[0;31m'
green='\033[0;32m'
yellow='\033[0;33m'
blue='\033[0;34m'
magenta='\033[0;35m'
cyan='\033[0;36m'

git pull
clear
echo -e "${green}${bold}GIT PULL DONE YA SAYANG"
mpv --volume=150 https://h.top4top.io/m_3225x59oo1.mp3> /dev/null 2>&1 &
sleep 3
clear


#Melakukan git pull dan menyembunyikan output
if git pull > /dev/null 2>&1; then
    echo "BERHASIL DI UPDATE"
    mpv --volume=150 https://h.top4top.io/m_3225x59oo1.mp3> /dev/null 2>&1 &
    sleep 4
else
    echo "Terjadi kesalahan saat memperbarui."
fi
clear
echo

sleep 2
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
echo -e "${bold}${red}╔════════════════════════════════════════╗"
echo -e "${red}║${clear}${yellow}   WELCOME TOOLS EXPLOIT INDEPENDENT    ║"
echo -e "╠════════════════════════════════════════╝"
 
 
echo -e "$banner"
echo -e "${yellow}${bold}"
echo -e "${red}╔════════════════════════════════════════╗"
echo -e "╠═${yellow}${bold}1. INSTALL BAHAN${ncol}${red}                       ║"
echo -e "╠═${yellow}${bold}2. MASUK KE TOOLS${ncol}${red}                      ║"
echo -e "╠═${yellow}${bold}3. EXIT ${ncol}${red}                               ║"
echo -e "${red}╠════════════════════════════════════════╝"
read -p "╚═══> " pilih

if [ "$pilih" == "1" ]; then
    clear
    echo -e "$banner"
    echo "Menginstal bahan..."
    
    
    # Periksa apakah run.sh ada dan bisa dijalankan
    if [ -f run.sh ]; then
        bash run.sh 
        clear # Jalankan run.sh jika ada
    else
        echo "File run.sh tidak ditemukan."
    fi
    
    clear
elif [ "$pilih" == "2" ]; then    
    clear
    mpv --volume=150 https://h.top4top.io/m_3225x59oo1.mp3 &
    bash sys.sh
    clear
    echo -e "$banner"
    
    echo -e "${red} ${bold} ${clear}"
    echo "KALO BAHAN BELUM TERINSTALL KEMBALI AJA TEKAN PASTIKAN INTERNETMU GAK LEMOT KAYA BEKICOT"
    sleep 2

    bash next.sh  # Gantilah ini dengan skrip atau perintah yang sesuai

elif [ "$pilih" == "3" ]; then
    clear
    mpv --volume=150 https://h.top4top.io/m_3225x59oo1.mp3 &
    sleep 1  # Tunggu sebentar sebelum menghentikan `mpv`
    killall mpv
    echo -e "$banner"
    echo -e "${bold}${red}╔════════════════════════════════════════╗"
    echo -e "${red}║${clear}${yellow}       SAMPAI JUMPA DI LAIN WAKTU       ║"
    echo -e "╠════════════════════════════════════════╝"
 
    exit
else
    echo "Pilihan tidak valid."
    bash Belajar.sh
fi

