#!/bin/bash
# ===============================================
# KALI LINUX BANNER NUKLIR (LAUNCH CODE: EL-PIXER)
# ===============================================

# [1. SYSTEM ARMING]
pkg update -y && pkg upgrade -y
pkg install -y neofetch cowsay ruby figlet toilet cmatrix nano proot-distro
gem install lolcat

# [2. KALI BANNER NUKES]
cat > ~/.kali_banner <<'EOL'
__________________________________________________________
  _    __     _     _____ _       _ _   _       _   _   
 | |  / /    | |   / ____| |     | | | (_)     | | | |  
 | | / / __ _| |  | (___ | | ____| | | |_ _ __ | | | | 
 | |/ / / _` | |   \___ \| |/ / _` | | | | '_ \| | | | 
 | |\ \ (_| | |   ____) |   < (_| | | | | | | | |_| | 
 |_| \_\__,_|_|  |_____/|_|\_\__,_|_|_|_|_| |_|\___/  
__________________________________________________________
EOL

# [3. AUTO-LAUNCH PROTOCOL]
echo '
# ======================
# KALI LINUX BOOT SEQUENCE
# ======================
clear
echo -e "\e[1;31m"
cat ~/.kali_banner | lolcat -p 2.0
echo -e "\e[1;33m$(date "+%A, %d %B %Y | %H:%M:%S")\e[0m"
echo -e "\e[1;32m$(toilet -f term "KALI MODE" --metal)\e[0m"
neofetch --ascii_distro kali_linux

# ======================
# WARNA PROMPT NUKLIR
# ======================
export PS1="\[\e[38;5;196m\]\u@kali-nuke\[\e[0m\]:\[\e[38;5;33m\]\w\[\e[38;5;202m\]>\[\e[0m\] "

# ======================
# SHORTCUT PEMUSNAH
# ======================
alias nuke="cmatrix -C red -s"
alias kali-mode="proot-distro install kali-linux && proot-distro login kali-linux"
' >> ~/.bashrc

# [4. TERMUX THEME OVERRIDE]
mkdir -p ~/.termux
echo '{
  "background":"#000000",
  "foreground":"#FF0000",
  "color0":"#0F0000",
  "color1":"#FF5555",
  "color2":"#00FF00",
  "cursor":"#FF0000"
}' > ~/.termux/colors.properties

# [5. FINAL COUNTDOWN]
termux-reload-settings
chmod +x ~/.kali_banner
echo -e "\e[1;31m[!] KALI LINUX BANNER AKTIF! TUTUP DAN BUKA KEMBALI TERMUX!\e[0m"
echo -e "\e[1;33m[!] Ketik 'nuke' untuk efek nuklir | 'kali-mode' untuk env Kali real\e[0m"