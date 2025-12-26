# update and upgrade
sudo apt update && sudo apt upgrade -y

# add multiverse repository and install some important tools
sudo dpkg --add-architecture i386
sudo add-apt-repository multiverse
sudo apt-get update
sudo apt-get dist-upgrade

sudo apt update && sudo apt upgrade -y

sudo apt install apt -y
sudo apt install curl -y
sudo apt install wget -y
sudo apt install ubuntu-restricted-extras
sudo apt install git -y
sudo apt install vlc -y
sudo apt install obs-studio -y

sudo apt install stacer -y
sudo apt install gparted -y
sudo apt install timeshift -y
sudo apt install steam -y
sudo apt install synaptic -y
sudo apt install gtkhash -y
sudo apt install adb -y
sudo apt install scrcpy -y
sudo apt install megasync -y

# gnome apps
sudo apt install gnome-tweaks -y
sudo apt install gnome-shell-extension-manager -y
sudo apt install gnome-snapshot -y
sudo apt install gnome-weather -y
sudo apt install gnome-calendar -y
sudo apt install dconf-editor -y
sudo apt install gnome-sound-recorder -y

# nautlius plugins
sudo apt install nautilus-image-converter -y
sudo apt install gnome-sushi -y
# sudo apt install nautilus-admin -y
# sudo apt install nautilus-compare -y
# sudo apt install nautilus-hide -y
# sudo apt install nautilus-terminal -y
# sudo apt install nautilus-wipe -y




# some important tools
sudo apt install htop neofetch curl linux-headers-$(uname -r) linux-headers-generic ntfs-3g
# sudo apt install htop neofetch bpytop clang cargo libc6-i386 libc6-x32 libu2f-udev samba-common-bin exfat-fuse default-jdk curl wget unrar linux-headers-$(uname -r) linux-headers-generic git gstreamer1.0-vaapi unzip ntfs-3g p7zip bpytop git gcc make bzip2 tar

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
flatpak install flathub com.vixalien.sticky -y

# snap apps
sudo snap install slack
sudo snap install teams-for-linux
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
# https://docs.docker.com/engine/install/ubuntu/#installation-methods
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

#create desktop shortcut for work folder
# ln -s /mnt/42A4B7B6A4B7AB35/sngy/ Desktop/
# ln -s /mnt/42A4B7B6A4B7AB35/farhan/ Desktop/


#create alisas
echo "alias cls='clear'" >> ~/.bashrc && source ~/.bashrc
echo "alias python=python3" >> ~/.bashrc && source ~/.bashrc



#Gnome

#Disable gnome extensions compatibility check for gnome versions
gsettings set org.gnome.shell disable-extension-version-validation true