#!/bin/bash

# Pull submodule(s)
cd ~/dotfiles
git submodule update --init
cd -

# Add ppas
sudo add-apt-repository ppa:ufleisch/kid3
sudo add-apt-repository ppa:papirus/papirus
sudo add-apt-repository ppa:snwh/ppa
sudo add-apt-repository ppa:kelleyk/emacs

# Add apt keys (non-free software)
sudo apt install curl wget
curl -sS https://download.spotify.com/debian/pubkey.gpg | sudo apt-key add - 
echo "deb http://repository.spotify.com stable non-free" | sudo tee /etc/apt/sources.list.d/spotify.list
wget -qO- https://github.com/retorquere/zotero-deb/releases/download/apt-get/install.sh | sudo bash
. /etc/os-release
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys ACCAF35C
echo "deb http://apt.insync.io/$ID $VERSION_CODENAME non-free contrib" | sudo tee /etc/apt/sources.list.d/insync.list

sudo apt update

# Install things
sudo apt install abcde arc-theme biber calibre chromium-browser cmus conky-all curl emacs26 evince eyed3 feh ffmpeg fonts-crosextra-carlito fonts-noto fonts-noto-color-emoji fonts-sil-andika fonts-sil-doulos geoclue-2.0 ghostscript gimp insync kid3-qt lame libcurl4-openssl-dev libnotify-dev libreoffice openbox pandoc papirus-icon-theme plank pnmixer python-pip python2.7 python3 python3-venv python3-pip redshift-gtk ruby-full sakura spotify-client suru-icon-set texlive-extra-utils texlive-latex-extra texlive-xetex tex-gyre thunderbird tint2 tree vlc vlc-plugin-fluidsynth xcompmgr zotero zsh
# build-essential libsox-fmt-all sox xserver-xorg-core xserver-xlib-input-synaptics zlib1g-dev

sudo apt update
sudo apt upgrade
sudo apt autoremove
sudo apt clean

# Disable tap to click # DO NOT DO THIS
# sudo mkdir -p /etc/X11/xorg.conf.d
# sudo cp /usr/share/X11/xorg.conf.d/70-synaptics.conf /etc/X11/xorg.conf.d/70-synaptics.conf

# Set compose key
sudo sed -i 's/XKBOPTIONS=""/XKBOPTIONS="compose:caps"/g' /etc/default/keyboard

# Install pip packages
sudo pip3 install pywal

# Install zsh (it gets set later)
wget https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh
sh install.sh --unattended
rm -f https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh
git clone https://github.com/bhilburn/powerlevel9k.git ~/.oh-my-zsh/custom/themes/powerlevel9k
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting

# Download various packages from github
mkdir -p ~/.gimp-2.8/scripts
curl https://api.github.com/repos/tshatrov/scriptfu/releases/latest | grep "browser_download_url.*scm" | cut -d : -f 2,3 | tr -d \" | wget -qi - 
mv animstack.scm ~/.gimp-2.8/scripts/

curl https://api.github.com/repos/getferdi/ferdi/releases/latest | grep "browser_download_url.*deb" | cut -d : -f 2,3 | tr -d \" | wget -qi - 
sudo dpkg -i ferdi*.deb
rm -f ferdi*.deb

git clone https://github.com/Arkq/cmusfm.git
cd cmusfm
autoreconf --install
mkdir build
cd -
cd cmusfm/build
../configure --enable-libnotify
make && sudo make install
cd -
rm -rf cmusfm # i *assume* this can be done before init
cmusfm init
echo Don’t forget to set it as a status display program

mkdir -p ~/.zot
curl https://api.github.com/repos/retorquere/zotero-better-bibtex/releases/latest | grep "browser_download_url.*xpi" | cut -d : -f 2,3 | tr -d \" | wget -qi -
mv zotero-better-bibtex*.xpi ~/.zot/

wget https://github.com/bBoxType/FiraSans/archive/master.zip
unzip master.zip
sudo mkdir -p /usr/share/fonts/opentype/fira
sudo mkdir -p /usr/share/fonts/truetype/fira
sudo find FiraSans-master/ -name "*.otf" -exec cp {} /usr/share/fonts/opentype/fira/ \;
sudo find FiraSans-master/ -name "*.ttf" -exec cp {} /usr/share/fonts/truetype/fira/ \;
rm -f master.zip
rm -rf FiraSans-master

git clone https://github.com/fikriomar16/obtgen.git
mkdir -p ~/.local/bin
cd obtgen
cp -r my-obtgen/ myobtheme/ obtgen ~/.local/bin/
chmod +x ~/.local/bin/obtgen
cd -
rm -rf obtgen

git clone https://github.com/dikiaap/frost-plank-theme
frost-plank-theme/install.sh
rm -rf frost-plank-theme

# Font for prompt
mkdir -p ~/.local/share/fonts
cd ~/.local/share/fonts/
wget https://github.com/ryanoasis/nerd-fonts/raw/master/patched-fonts/Noto/Mono/complete/Noto%20Mono%20Nerd%20Font%20Complete%20Mono.ttf
cd -

# Set default terminal & browser
read -p "Prepare to set default terminal.`echo $'\nPress enter to continue.'`"
clear
sudo update-alternatives --config x-terminal-emulator
read -p "Prepare to set default browser.`echo $'\nPress enter to continue.'`"
clear
sudo update-alternatives --config x-www-browser

# This can’t be done before setting up zsh I think
sudo gem install jekyll bundler

# Make empty files for machine-specific config
mkdir -p ~/.config/openbox
touch ~/.config/openbox/autostart-specific.sh
echo \#\!\/bin\/bash > ~/.config/openbox/autostart-specific.sh
echo \: > ~/.config/openbox/autostart-specific.sh
chmod +x ~/.config/openbox/autostart-specific.sh

touch ~/.oh-my-zsh/custom/aliases-specific

touch ~/.colourvars

# Rename the git repo
mv ~/dotfiles ~/.linux

# Set cursor theme
rm -f ~/.Xresources
touch ~/.Xresources
echo Xcursor.theme: Suru > .Xresources # this is set again after wal

# Get rid of existing config files
rm -f ~/.zshrc ~/.gitconfig ~/.XCompose
rm -f ~/.config/cmus/rc
rm -f ~/.oh-my-zsh/custom/aliases
rm -f ~/.config/openbox/rc.xml
rm -f ~/.config/openbox/menu.xml
rm -f ~/.config/openbox/autostart
rm -f ~/.config/gtk-3.0/settings.ini
rm -f ~/.config/gtk-4.0/settings.ini
rm -f ~/.config/fontconfig/fonts.conf
rm -f ~/.config/pnmixer/config
rm -f ~/.config/sakura/sakura.conf
rm -f ~/.conkyrc
rm -rf ~/.config/plank

# Symlink config files from git repo
ln -s ~/.linux/dots/.zshrc ~
ln -s ~/.linux/dots/aliases ~/.oh-my-zsh/custom
ln -s ~/.linux/dots/.gitconfig ~
ln -s ~/.linux/dots/.XCompose ~
mkdir -p ~/.config/cmus
ln -s ~/.linux/dots/cmus/rc ~/.config/cmus
ln -s ~/.linux/dots/openbox/autostart ~/.config/openbox
ln -s ~/.linux/dots/openbox/rc.xml ~/.config/openbox
ln -s ~/.linux/dots/openbox/menu.xml ~/.config/openbox
mkdir -p ~/.config/gtk-3.0
ln -s ~/.linux/dots/gtk/3/settings.ini ~/.config/gtk-3.0
mkdir -p ~/.config/gtk-4.0
ln -s ~/.linux/dots/gtk/4/settings.ini ~/.config/gtk-4.0
mkdir -p ~/.config/fontconfig
ln -s ~/.linux/dots/fonts.conf ~/.config/fontconfig
mkdir -p ~/.config/pnmixer
ln -s ~/.linux/dots/pnmixer/config ~/.config/pnmixer
mkdir -p ~/.config/sakura
ln -s ~/.linux/dots/sakura.conf ~/.config/sakura
ln -s ~/.linux/dots/.conkyrc ~
mkdir -p ~/.config/plank/dock1/launchers
cp ~/.linux/dots/plank/items/*.dockitem ~/.config/plank/dock1/launchers/
cat ~/.linux/dots/plank/plank.ini | dconf load /net/launchpad/plank/docks/

# Set up .emacs.d (haven't tested this part)
rm -f ~/.emacs
rm -rf ~/.emacs.d
mkdir -p ~/.emacs.d
git clone https://github.com/tremeur29/emacs.d.git ~/.emacs.d

# Set theme
wal --vte -li ~/.linux/aes/kandinsky.jpg
wait
feh --bg-fill ~/.linux/aes/kandinsky.jpg
rm -f ~/.Xresources
echo Xcursor.theme: Suru >> ~/.cache/wal/colors.Xresources
cp -f ~/.cache/wal/colors.Xresources ~/.Xresources
obtgen
~/.linux/scripts/bordergen.sh

# Stop double autostarts (not sure if this actually works)

rm -f ~/.config/autostart/*

# Now set zsh

chsh -s $(which zsh)

# That’s it
echo Please restart.
