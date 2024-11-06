import os
import sys
from pytube import YouTube
from pytube.exceptions import VideoUnavailable
from tqdm import tqdm
import pyfiglet
import time

def print_header():
    banner = pyfiglet.figlet_format("FUCKYOU")
    author = "Author: Mr.4Rex_503"  
    print(banner)
    print(author)
    print("=" * len(author))
    print("Selamat Datang Para Penikmat Bokep")
    print("=" * 50 + "\n")

def loading_progress():
    print("Loading, please wait...")
    for _ in tqdm(range(100), desc="Loading", bar_format="{l_bar}{bar}| {n_fmt}/{total_fmt} [{elapsed}<{remaining}]"):
        time.sleep(0.05)  

def get_video_url():
    url = input("🔗 Masukkan URL lo : ").strip()
    if not url:
        print("❌ Gua nggak dapat URL lu NGENTOD...")
        sys.exit(1)
    return url

def choose_download_type():
    print("\n📥 Type Download :")
    print("1. Video (Resolusi Tinggi) Tapi Boong")
    print("2. Audio (mp3)")
    choice = input("🔢 Enter 1 or 2: ").strip()

    if choice == "1":
        return "video"
    elif choice == "2":
        return "audio"
    else:
        print("❌ Pilihan lu salah BABI Ulang....")
        sys.exit(1)

def get_download_folder():
    folder = input("📁 Masukkan Path untuk gua simpan download mu ini NGENTOD : ").strip()
    if not folder:
        folder = os.getcwd()  
    if not os.path.exists(folder):
        print("❌ Gua nggak liat folder lu ASU ULANG...")
        sys.exit(1)
    return folder

def download_video(url, download_type, folder):
    try:
        yt = YouTube(url)

        print(f"\n📹 Sabar BOKEP '{yt.title}'...")
        if download_type == "video":
            stream = yt.streams.get_highest_resolution()
        elif download_type == "audio":
            stream = yt.streams.filter(only_audio=True).first()

        print("⬇️ Sementara Download Mohon Tunggu Anak Dajjal...")
        file_size = stream.filesize
        with tqdm(total=file_size, unit='B', unit_scale=True, desc=yt.title, bar_format='{l_bar}{bar}| {n_fmt}/{total_fmt} [{elapsed}<{remaining}]') as pbar:
            stream.download(output_path=folder, on_progress_callback=lambda stream, chunk, bytes_remaining: pbar.update(len(chunk)))

        print(f"✅ Alhamdulillah udah selesai dan di simpan ke : {folder}")
        
    except VideoUnavailable:
        print("❌ We lu ngotak kalau nyuri soal nya gua kagak nemu vidio lu NGENTOD.")
    except Exception as e:
        print(f"❌ Terjadi Kesalahan : {e}")

def main():
    print_header()
    loading_progress()  

    url = get_video_url()
    download_type = choose_download_type()
    folder = get_download_folder()

    download_video(url, download_type, folder)

if __name__ == "__main__":
    main()