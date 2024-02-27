#!/bin/bash

# ###############   ###      ###   ###############   ######            ###   ###             ###        ######
# ###   ###   ###   ###      ###   ###   ###   ###   ###   ###         ###   ###             ###     ###   ###
# ###   ###   ###   ###      ###   ###   ###   ###   ###      ###      ###   ######          ###  ###      ###
# ###   ###   ###   ############   ###   ###   ###   ###         ###   ###   ###   ###       ###     ###   ###
# ###   ###   ###   ###      ###   ###   ###   ###   ###      ###      ###   ###       ###   ###        ######
# ###   ###   ###   ###      ###   ###   ###   ###   ###   ###         ###   ###   ###       ###           ###
# ###   ###   ###   ###      ###   ###   ###   ###   ######            ###   ######          ###           ###

main='\033[0;35m'
white='\033[1;37m'
ptr="${main}[*]${white}"

function initSetup() {
  cd $HOME
  # Install Packages
  sudo pacman -S --noconfirm --needed wget curl htop btop neofetch qbittorrent waybar ark pavucontrol pamixer playerctl brightnessctl dunst swaylock grim nwg-look qt5ct kvantum unzip unrar copyq obs-studio gwenview xdg-user-dirs gimp noto-fonts noto-fonts-emoji ttf-dejavu ttf-dejavu-nerd ttf-font-awesome neovim zsh nodejs npm bluez blueman polkit-kde-agent xorg-xhost vlc kdenlive
  yay -S --noconfirm --needed google-chrome wps-office nwg-bar-bin swww visual-studio-code-bin wl-color-picker wofi-emoji
  # Create user dirs
  xdg-user-dirs-update
  # Tweak Hyprland
  cd $HOME/myHyprland
  cp hyprland.conf $HOME/.config/hypr/
  # Tweak waybar
  cd $HOME/myHyprland
  cp -r waybar/ $HOME/.config/
  # Tweak nwg-bar
  cd $HOME/myHyprland
  cp -r nwg-bar/ $HOME/.config/
  sudo cp -r nwg-bar/images/ /usr/share/nwg-bar/
  # Tweak kitty
  cd $HOME/myHyprland
  cp -r kitty/ $HOME/.config/
  # Tweak pacman
  sudo sed -i "s/#Color/Color/g" /etc/pacman.conf
  sudo sed -i "s/#ParallelDownloads = 5/ParallelDownloads = 5/g" /etc/pacman.conf
}

clear

echo -e "${main}
  ###############   ###      ###   ###############   ######            ###   ###             ###        ######
  ###   ###   ###   ###      ###   ###   ###   ###   ###   ###         ###   ###             ###     ###   ###
  ###   ###   ###   ###      ###   ###   ###   ###   ###      ###      ###   ######          ###  ###      ###
  ###   ###   ###   ############   ###   ###   ###   ###         ###   ###   ###   ###       ###     ###   ###
  ###   ###   ###   ###      ###   ###   ###   ###   ###      ###      ###   ###       ###   ###        ######
  ###   ###   ###   ###      ###   ###   ###   ###   ###   ###         ###   ###   ###       ###           ###
  ###   ###   ###   ###      ###   ###   ###   ###   ######            ###   ######          ###           ###
"

echo -e "${ptr} Before start the script"
echo -e "${ptr} Make sure you can run sudo without password"
echo -e "${ptr} If you don't want to no problem"

echo "Start script ? (Y | N)"

read answer

if [ "$answer" == "y" ] || [ "$answer" == "Y" ]; then
  initSetup;
else
  echo -e "${ptr} Script Ended"
fi