clear; printf "\n  (HuyenThoaiHaiTac Server Termux)\n\n  https://github.com/https://github.com/LongDo8593/huyenthoaihaitac/\n\n  Website: https://gmtoolgame.tudong.pro \n\n\n Sau khi cài đặt, mọi quyền hạn và tính năng của Termux sẽ thuộc về Huyền thoại hải tặc Server Termux\n Ví dụ như bạn không thể apt install bất kì cái gì, kể cả dpkg\n\n Nếu bạn muốn quay về ban đầu, hãy cài đặt lại Termux\n\n\n KEY HUYỀN THOẠI HẢI TẶC SEVER TERMUX \n\n    - Nếu bạn chưa có key truy cập:\n\n      Https://longdo.cc\n\n    - Bạn muốn tiếp tục vui lòng nhập key?\n\n   "; read -p "Key: " yesorno; if [[ $yesorno == "LONGDZ" ]] || [[ $yesorno == "LONGDZ" ]]; then printf "\n\n"; echo "Y" | termux-setup-storage &> /dev/null; url="https://raw.githubusercontent.com/NGUYENTRIEUPHUC/huyenthoaihaitac/main"; cpu="$(getprop ro.product.cpu.abi)"; if [[ $cpu == "arm64-v8a" ]]; then archdeb="aarch64"; else if [[ $cpu == "armeabi-v7a" ]] || [[ $cpu == "armeabi" ]]; then archdeb="arm"; url="${url}/bin32"; else if [[ $cpu == "x86_64" ]]; then archdeb="x64"; url="${url}/binx64"; else printf "\n Không hỗ trợ x86 - 32bit!\n\n"; exit 0; fi; fi; fi; clear; printf "\nDownloading package....\n\n"; curl -L --max-redirs 15 --progress-bar "https://github.com/NGUYENTRIEUPHUC/huyenthoaihaitac/releases/download/huyenthoaihaitacc-server-dev/huyenthoaihaitac-dev_${archdeb}.deb" --output huyenthoaihaitac-server-dev.deb || exit 0; echo "Y" | dpkg -i --force-overwrite huyenthoaihaitac-server-dev.deb; curl -L --max-redirs 15 --progress-bar "${url}/install.sh" --output install.sh || exit 0; chmod 777 ./install.sh; ./install.sh https://fb.me/khanh10a1; fi
