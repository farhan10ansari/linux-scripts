sudo dnf upgrade --refresh

# Zed Install
curl -f https://zed.dev/install.sh | sh

# fedora apps
sudo dnf install git vlc curl adb gnome-tweaks htop

# flatpak apps
flatpak install flathub com.mattjakeman.ExtensionManager
flatpak install flathub io.github.kolunmi.Bazaar
flatpak install flathub net.nokyan.Resources -y
flatpak install flathub org.localsend.localsend_app -y
flatpak install flathub com.usebottles.bottles -y
flatpak install flathub org.telegram.desktop -y
flatpak install flathub com.wps.Office -y
flatpak install flathub io.dbeaver.DBeaverCommunity -y
flatpak install flathub com.vixalien.sticky -y

# Virtualization 
sudo dnf install @virtualization
sudo systemctl enable --now libvirtd
sudo usermod -aG kvm,libvirt $(whoami)


# some settings
gsettings set org.gnome.shell.extensions.dash-to-dock click-action 'minimize-or-previews'
gsettings set org.gnome.desktop.interface clock-format '12h'
# fix dual boot time issue
timedatectl set-local-rtc 1

# git setup
git config --global user.name "farhan10ansari"
git config --global user.email "farhan10ansari@gmail.com"


# setup open with code for nautilus
wget -qO- https://raw.githubusercontent.com/harry-cpp/code-nautilus/master/install.sh | bash


#create alisas
echo "alias cls='clear'" >> ~/.bashrc && source ~/.bashrc
echo "alias python=python3" >> ~/.bashrc && source ~/.bashrc

#Disable gnome extensions compatibility check for gnome versions
gsettings set org.gnome.shell disable-extension-version-validation true


#install nodejs
# Download and install nvm:
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.3/install.sh | bash
# in lieu of restarting the shell
\. "$HOME/.nvm/nvm.sh"
# Download and install Node.js:
nvm install 22
# Verify the Node.js version:
node -v # Should print "v22.21.1".
# Verify npm version:
npm -v # Should print "10.9.4".
