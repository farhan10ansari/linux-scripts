sudo dnf upgrade --refresh

# Zed Install
curl -f https://zed.dev/install.sh | sh

# fedora apps
sudo dnf install git vlc curl adb gnome-tweaks htop gnome-tweaks -y

# flatpak apps
flatpak install flathub com.mattjakeman.ExtensionManager -y
flatpak install flathub io.github.kolunmi.Bazaar -y
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

#ddcutil for monitor control
sudo dnf install ddcutil
#copyous
sudo dnf install libgda libgda-sqlite


#vscode setup
sudo rpm --import https://packages.microsoft.com/keys/microsoft.asc &&
echo -e "[code]\nname=Visual Studio Code\nbaseurl=https://packages.microsoft.com/yumrepos/vscode\nenabled=1\nautorefresh=1\ntype=rpm-md\ngpgcheck=1\ngpgkey=https://packages.microsoft.com/keys/microsoft.asc" | sudo tee /etc/yum.repos.d/vscode.repo > /dev/null

dnf check-update && sudo dnf install code # or code-insiders


#brave install
sudo dnf install dnf-plugins-core -y
sudo dnf config-manager addrepo --from-repofile=https://brave-browser-rpm-release.s3.brave.com/brave-browser.repo
sudo dnf install brave-browser -y




# some settings
gsettings set org.gnome.shell.extensions.dash-to-dock click-action 'minimize-or-previews'
gsettings set org.gnome.desktop.interface clock-format '12h'
# fix dual boot time issue
timedatectl set-local-rtc 1

# git setup
git config --global user.name "farhan10ansari"
git config --global user.email "farhan10ansari@gmail.com"



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


# setup open with code for nautilus
# wget -qO- https://raw.githubusercontent.com/harry-cpp/code-nautilus/master/install.sh | bash

#Enable open in code, cursor, antigravity for nautilus
sudo dnf install nautilus-python -y
mkdir -p ~/.local/share/nautilus-python/extensions/
cp scripts/*.py ~/.local/share/nautilus-python/extensions/