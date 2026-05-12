##!/bin/bash
#set -e
#
##########################################################
#                                                        #
#               DZN-Linux Install Script                 #
#  ArchLinux Applications Automatic Installation Script  #
#  Inspired and Forked From                              #
#  https://github.com/SofianeHamlaoui/ArchI0             #
#  And                                                   #
#  https://github.com/arcolinuxd/arco-xfce               #
##########################################################
#+FIRST  : sudo chmod +x dznlinux-plasma-applications.sh #
#                (Give EXEC Access To Script)            #
#  +TO RUN    : ./dznlinux-plasma-applications.sh        # 
#                                                        #
#  Add dznlinux repos and key before running             #
##########################################################
#                                                        #
#                DO NOT JUST RUN THIS.                   #
#       EXAMINE AND JUDGE. RUN AT YOUR OWN RISK.         #
#                                                        #
##########################################################
#
#
#  TO DO:
#
#
######################## Variables #######################
#
# b=bold u=underline bl=black r=red g=green
# y=yellow bu=blue m=magenta c=cyan w=white
# endc=end-color enda=end-argument
b='\033[1m'
u='\033[4m'
bl='\E[30m'
r='\E[31m'
g='\E[32m'
y='\E[33m'
bu='\E[34m'
m='\E[35m'
c='\E[36m'
w='\E[37m'
endc='\E[0m'
enda='\033[0m'
version="20260512"

####################### Functions ########################

function install {
  # Check If Package Is Installed
  if pacman -Qi $1 &> /dev/null; then
      echo -e " [${g}✔${endc}]::[${b}"$1"${enda}] Is Already Installed!"
  else
      sudo pacman -S --noconfirm --needed $1
      # Verify Successful Installation
    if pacman -Qi $package &> /dev/null; then
      echo -e " [${g}✔${endc}]::[${b}"$1"${enda}]: Installed!"
    else
      echo -e " [${r}!${endc}]::[${b}"$1"${enda}]: ${r}NOT Installed!${endc}"
    fi
  fi
}

function category {
  echo -e " [${g}✔${endc}]::Installing Software For Category ${b}${bu}["$1"]${endc}${enda}"
  echo
}

function end_category {
  echo
  echo -e " [${g}✔${endc}]::Category ${bu}${b}["$1"]${enda}${endc} Installed!"
  echo
}

###############################################################################

category Bash

list=(
asciiquarium
cmatrix
cool-retro-term
cowfortune
fastfetch
fortune-mod
lolcat
mc
ranger
sl
)

count=0

for name in "${list[@]}" ; do
  count=$[count+1]
  echo -e " ${y}Installing package # "$count" ${b}["$name"]${enda} ${endc}" ;
  install $name
done

end_category Bash

###############################################################################

category Accessories

list=(
pipes.sh
cronie
mintstick-git
yad
)

count=0

for name in "${list[@]}" ; do
  count=$[count+1]
  echo -e " ${y}Installing package # "$count" ${b}["$name"]${enda} ${endc}" ;
  install $name
done

end_category Accessories

###############################################################################

category Development

list=(
ansible-core
arduino
devtools
geany
git
gitahead
go
meld
#sublime-text-3
sshpass
terraform
)

count=0

for name in "${list[@]}" ; do
  count=$[count+1]
  echo -e " ${y}Installing package # "$count" ${b}["$name"]${enda} ${endc}" ;
  install $name
done

end_category Development

###############################################################################

category Fonts

list=(
dznlinux-fonts-git
awesome-terminal-fonts
adobe-source-sans-pro-fonts
cantarell-fonts
noto-fonts
noto-fonts-emoji
noto-fonts-cjk
ttf-bitstream-vera
ttf-dejavu
ttf-droid
ttf-font-awesome
ttf-hack
ttf-inconsolata
ttf-jetbrains-mono
ttf-liberation
ttf-ms-fonts
ttf-nerd-fonts-symbols-mono
ttf-roboto
ttf-ubuntu-font-family
tamsyn-font
ttf-meslo
)

count=0

for name in "${list[@]}" ; do
  count=$[count+1]
  echo -e " ${y}Installing package # "$count" ${b}["$name"]${enda} ${endc}" ;
  install $name
done

end_category Fonts

###############################################################################

category Games

list=(
#kmines
steam-native-runtime
steam
#supertuxkart
# Compatibility / launchers
lutris
#heroic-games-launcher-bin
#bottles
wine
#wine-staging
#proton-ge-custom-bin
# Performance / overlay
gamemode
gamescope
mangohud
lib32-vulkan-icd-loader
# Emulators
retroarch
#dolphin-emu
#pcsx2
#rpcs3
# Controller support
#game-devices-udev
)

count=0

for name in "${list[@]}" ; do
  count=$[count+1]
  echo -e " ${y}Installing package # "$count" ${b}["$name"]${enda} ${endc}" ;
  install $name
done

end_category Games

###############################################################################

category Graphics

list=(
blender
#cura
darktable
gimp
inkscape
krita
flameshot
nomacs
openscad
orca-slicer
#superslicer
#prusa-slicer
#slic3r
#kdenlive
#rawtherapee
#imagemagick
)

count=0

for name in "${list[@]}" ; do
  count=$[count+1]
  echo -e " ${y}Installing package # "$count" ${b}["$name"]${enda} ${endc}" ;
  install $name
done

end_category Graphics

###############################################################################

category Internet

list=(
discord
filezilla
firefox
#chromium
#hexchat
nextcloud-client
qbittorrent
remmina
telegram-desktop
tokodon
#element-desktop
#slack-desktop
#zoom
)

count=0

for name in "${list[@]}" ; do
  count=$[count+1]
  echo -e " ${y}Installing package # "$count" ${b}["$name"]${enda} ${endc}" ;
  install $name
done

end_category Internet

###############################################################################

category Multimedia

list=(
audacity
deadbeef
elisa
ffmpeg
haruna
obs-studio
vlc
#kooha
#peek
#pithos
#spotifyd
#spotify-launcher
#strawberry
#handbrake
#kdenlive
)

count=0

for name in "${list[@]}" ; do
  count=$[count+1]
  echo -e " ${y}Installing package # "$count" ${b}["$name"]${enda} ${endc}" ;
  install $name
done

end_category Multimedia

###############################################################################

category Office

list=(
calibre
#dropbox
evince
okular
#evolution
gnucash
hunspell
hunspell-en_us
hyphen
hyphen-en
#joplin-desktop
kate
libmythes
mythes-en
libreoffice-fresh
obsidian
perl-date-manip
perl-finance-quote
thunderbird
#apostrophe
#kolourpaint
#onlyoffice-desktopeditors
#xournalpp
)

count=0

for name in "${list[@]}" ; do
  count=$[count+1]
  echo -e " ${y}Installing package # "$count" ${b}["$name"]${enda} ${endc}" ;
  install $name
done

end_category Office

###############################################################################

category Printers

list=(
brother-hll2350dw
cups
cups-pdf
foomatic-db
foomatic-db-engine
ghostscript
gsfonts
gutenprint
gtk3-print-backends
libcups
print-manager
system-config-printer
#hplip
#samsung-unified-linux-driver
)

count=0

for name in "${list[@]}" ; do
  count=$[count+1]
  echo -e " ${y}Installing package # "$count" ${b}["$name"]${enda} ${endc}" ;
  install $name
done

end_category Printers

sudo systemctl enable cups.service

echo
echo -e " [${g}✔${endc}]::Print Services ${b}${r}[Enabled]${endc}${enda}"
echo

###############################################################################

category DZN-Linux-General

list=(
dznlinux-bin-git
dznlinux-root-git
)

count=0

for name in "${list[@]}" ; do
  count=$[count+1]
  echo -e " ${y}Installing package # "$count" ${b}["$name"]${enda} ${endc}" ;
  install $name
done

end_category DZN-Linux-General

###############################################################################

category Sound

list=(
pipewire
pipewire-alsa
pipewire-pulse
pipewire-jack
wireplumber
alsa-firmware
alsa-lib
alsa-plugins
alsa-utils
gstreamer
gst-plugins-good
gst-plugins-bad
gst-plugins-base
gst-plugins-ugly
pavucontrol
playerctl
#qpwgraph
#easyeffects
#volumeicon
)

count=0

for name in "${list[@]}" ; do
  count=$[count+1]
  echo -e " ${y}Installing package # "$count" ${b}["$name"]${enda} ${endc}" ;
  install $name
done

end_catrgory Sound

###############################################################################

category System

list=(
btop
dconf-editor
dmidecode
glances
gnome-keyring
gparted
grsync
gufw
hardinfo-git
htop
hwinfo
i2c-tools
jq
lsb-release
man-db
man-pages
net-tools
#octopi
#octopi-notifier-frameworks
openssh
openrgb
pamac-aur
pamac-tray-icon-plasma
perl-file-mimeinfo
power-profiles-daemon
python-zeroconf
reflector
rsync
simple-scan
smartmontools
#sysstat
ufw
ufw-extras
vnstat
xdg-desktop-portal
xdg-desktop-portal-kde
w3m
wget
whois
xdg-user-dirs
zenity
zsh
zsh-completions
zsh-syntax-highlighting
#arc-gtk-theme
#dmenu
#flatpak
#numlockx
#snapper
#snap-pac
#wmctrl
#xdo
#xdotool
)

count=0

for name in "${list[@]}" ; do
  count=$[count+1]
  echo -e " ${y}Installing package # "$count" ${b}["$name"]${enda} ${endc}" ;
  install $name
done

end_category System

###############################################################################

category Utilities

list=(
alacritty
bat
bitwarden
cdrdao
chirp-next
dnsutils
downgrade
dvd+rw-tools
expac
eza
fd
fzf
inxi
inetutils
mugshot
ripgrep
seahorse
tmux
wl-clipboard
xclip
yay
yt-dlp
#bashtop
#hardcode-fixer-git
#joyutils
#kdialog
#trizen
#variety
#ventoy
)

count=0

for name in "${list[@]}" ; do
  count=$[count+1]
  echo -e " ${y}Installing package # "$count" ${b}["$name"]${enda} ${endc}" ;
  install $name
done

end_category Utilities

###############################################################################

category Unpack

list=(
ark
cabextract
lz4
lzop
p7zip
unrar
zip
unzip
zstd
#arj
#bzip2
#file-roller
#lhasa
#sharutils
#unace
#uudeview
)

count=0

for name in "${list[@]}" ; do
  count=$[count+1]
  echo -e " ${y}Installing package # "$count" ${b}["$name"]${enda} ${endc}" ;
  install $name
done

end_category Unpack

###############################################################################

category KDE_Apps

list=(
dolphin
ffmpegthumbs
filelight
gwenview
kcalc
kde-gtk-config
kdeconnect
kdegraphics-thumbnailers
konsole
partitionmanager
spectacle
)

count=0

for name in "${list[@]}" ; do
  count=$[count+1]
  echo -e " ${y}Installing package # "$count" ${b}["$name"]${enda} ${endc}" ;
  install $name
done

end_category KDE_Apps

###############################################################################

category Hyprland

list=(
brightnessctl
grim
hypridle
hyprlock
hyprpaper
mako
qt5ct
qt6ct
slurp
waybar
wofi
xdg-desktop-portal-hyprland
#hyprshade
#wlogout
#waypaper
)

count=0

for name in "${list[@]}" ; do
  count=$[count+1]
  echo -e " ${y}Installing package # "$count" ${b}["$name"]${enda} ${endc}" ;
  install $name
done

end_category Hyprland

###############################################################################

category Bug_Bounty

list=(
# Web testing (custom repo)
burpsuite
caido-desktop
caido-cli
cyberchef-electron
# Recon / scanning (custom repo)
amass
httprobe-bin
nuclei
# Web testing (official repos)
ffuf
gobuster
nikto
nmap
masscan
sqlmap
# Credential / hash attacks (official repos)
hashcat
john
thc-hydra
# Traffic analysis (official repos)
proxychains-ng
wireshark-qt
# Forensics / steganography (custom repo)
steghide
stegseek
# AUR only - uncomment as needed
#feroxbuster
#metasploit
#seclists
#subfinder
#waybackurls
#whatweb
#wpscan
#zaproxy
)

count=0

for name in "${list[@]}" ; do
  count=$[count+1]
  echo -e " ${y}Installing package # "$count" ${b}["$name"]${enda} ${endc}" ;
  install $name
done

end_category Bug_Bounty

###############################################################################

category Final

list=(
hardcode-fixer-git
)

count=0

for name in "${list[@]}" ; do
  count=$[count+1]
  echo -e " ${y}Installing package # "$count" ${b}["$name"]${enda} ${endc}" ;
  install $name
done


echo -e " [${r}!${endc}]::Fixing hardcoded icon paths for applications ${b}${r}[Wait for it]${endc}${enda}"
echo
sudo hardcode-fixer
echo -e " [${g}✔${endc}]::Fixing hardcoded icon paths for applications ${b}${g}[Completed]${endc}${enda}"

end_category Final

###############################################################################

#echo -e " [${g}✔${endc}]::Copying all files and folders from ${b}${bu}[ /etc/skel to ~ ]${endc}${enda}"
#echo
#cp -Rf ~/.config ~/.config-backup-$(date +%Y.%m.%d-%H.%M.%S)
#cp -arf /etc/skel/. ~

echo -e " [${g}✔${endc}]::Software For ${b}${r}[DZN-Linux Plasma]${endc}${enda} Installed"
echo
echo -e " ${bu}SMD-Arch Installation Script Version${b} $version ${enda} ${endc}"
