# update and upgrade
sudo apt update && sudo apt upgrade -y

# add multiverse repository and install some important tools
sudo dpkg --add-architecture i386
sudo add-apt-repository multiverse
sudo apt-get update
sudo apt-get dist-upgrade

sudo apt update && sudo apt upgrade -y

sudo apt install nala -y
sudo apt install curl -y
sudo apt install wget -y
sudo apt install ubuntu-restricted-extras
sudo nala install git -y
sudo nala install vlc -y
sudo nala install obs-studio -y

sudo nala install stacer -y
sudo nala install gparted -y
sudo nala install timeshift -y
sudo nala install steam -y
sudo nala install synaptic -y
sudo nala install gtkhash -y
sudo nala install adb -y
sudo nala install scrcpy -y

# gnome apps
sudo nala install gnome-tweaks -y
sudo nala install gnome-shell-extension-manager -y
sudo nala install gnome-snapshot -y
sudo nala install gnome-weather -y
sudo nala install gnome-calendar -y
sudo nala install dconf-editor -y
sudo nala install gnome-sound-recorder -y

# nautlius plugins
sudo nala install nautilus-image-converter -y
sudo nala install gnome-sushi -y
# sudo nala install nautilus-admin -y
# sudo nala install nautilus-compare -y
# sudo nala install nautilus-hide -y
# sudo nala install nautilus-terminal -y
# sudo nala install nautilus-wipe -y




# some important tools
sudo nala install htop neofetch curl linux-headers-$(uname -r) linux-headers-generic ntfs-3g
# sudo nala install htop neofetch bpytop clang cargo libc6-i386 libc6-x32 libu2f-udev samba-common-bin exfat-fuse default-jdk curl wget unrar linux-headers-$(uname -r) linux-headers-generic git gstreamer1.0-vaapi unzip ntfs-3g p7zip bpytop git gcc make bzip2 tar

# virtual machine tools
sudo apt install qemu-kvm qemu-utils libvirt-daemon-system libvirt-clients bridge-utils virt-manager ovmf -y

# install grub customizer
sudo add-apt-repository ppa:danielrichter2007/grub-customizer
sudo apt install grub-customizer

# install zed editor
curl -f https://zed.dev/install.sh | sh

# setup flathub
sudo apt install flatpak -y
sudo apt install gnome-software-plugin-flatpak -y
flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo

# flatpak apps
flatpak install flathub net.nokyan.Resources -y
flatpak install flathub org.localsend.localsend_app -y
flatpak install flathub com.github.tchx84.Flatseal -y
flatpak install flathub com.usebottles.bottles -y
flatpak install flathub org.telegram.desktop -y
flatpak install flathub org.mozilla.Thunderbird -y
flatpak install flathub com.wps.Office -y
flatpak install flathub io.dbeaver.DBeaverCommunity -y
flatpak install flathub io.typora.Typora -y

# snap apps
sudo snap install slack
sudo snap install teams-for-linux
sudo snap install keep-presence
sudo snap install xdman


# install cpu auto frequency
git clone https://github.com/AdnanHodzic/auto-cpufreq.git
cd auto-cpufreq && sudo ./auto-cpufreq-installer

# some settings
gsettings set org.gnome.shell.extensions.dash-to-dock click-action 'minimize-or-previews'
gsettings set org.gnome.desktop.interface clock-format '12h'
# fix dual boot time issue
timedatectl set-local-rtc 1


# manual install
# obsidian
# vs-code
# mongodb compass
# dbeaver
# postman
# insightful


# git setup
git config --global user.name "Fin-Alan"
git config --global user.email "insanetechie10@gmail.com"

# cd ~/Desktop
# mkdir work
# cd ~


# grub themes installation
git clone https://github.com/ChrisTitusTech/Top-5-Bootloader-Themes
cd Top-5-Bootloader-Themes
sudo ./install.sh

# setup open with code for nautilus
wget -qO- https://raw.githubusercontent.com/harry-cpp/code-nautilus/master/install.sh | bash

# install nodejs
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.7/install.sh | bash
# need to restart terminal
nvm install --lts


# install touchegg for x11 gestures
sudo add-apt-repository ppa:touchegg/stable
sudo apt update
sudo apt install touchegg



# install docker

# Add Docker's official GPG key:
sudo apt-get update
sudo apt-get install ca-certificates curl
sudo install -m 0755 -d /etc/apt/keyrings
sudo curl -fsSL https://download.docker.com/linux/ubuntu/gpg -o /etc/apt/keyrings/docker.asc
sudo chmod a+r /etc/apt/keyrings/docker.asc

# Add the repository to Apt sources:
echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.asc] https://download.docker.com/linux/ubuntu \
  $(. /etc/os-release && echo "$VERSION_CODENAME") stable" | \
  sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt-get update

# Install the Docker packages.
sudo apt-get install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin