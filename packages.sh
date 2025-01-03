sudo pacman -S --needed --noconfirm polkit polkit-kde-agent \
  hyprland hyprlock hyprcursor hyprpicker swww xdg-desktop-portal-hyprland xdg-desktop-portal-gtk xwaylandvideobridge gnome-keyring \
  git wget curl waybar unzip unrar xdg-user-dirs brightnessctl playerctl pamixer pavucontrol font-manager okular \
  man qt6-wayland qt5-wayland grim slurp nano micro xorg-xhost nm-connection-editor network-manager-applet gdm dunst \
  dolphin kdegraphics-thumbnailers kimageformats qt6-imageformats kdesdk-thumbnailers ffmpegthumbs taglib icoutils ark \
  noto-fonts noto-fonts-emoji ttf-liberation ttf-dejavu ttf-firacode-nerd \
  nodejs-lts-iron npm yarn btop fastfetch htop \
  upower power-profiles-daemon \
  nwg-look kvantum \
  bluez blueberry \
  wl-clipboard cliphist nwg-clipman wofi kitty \
  mpv gimp gwenview \
  breeze gnome-themes-extra adw-gtk-theme epapirus-icon-theme \
  firefox libreoffice-still hunspell gnome-disk-utility \
  zsh zsh-syntax-highlighting zsh-autosuggestions

paru -S --noconfirm --needed google-chrome brave-bin \
  waypaper \
  visual-studio-code-bin \
  ttf-ms-win11-auto \
  qt6ct-kde \
  bibata-cursor-theme-bin \
  wlogout

if command -v omz ||>/dev/null; then
  echo "omz installed"
else
  echo "omz not installed"
  sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
  omz theme set agnoster
fi

sudo systemctl enable bluetooth
sudo systemctl enable gdm

cp -r $HOME/myHyprland/.config/* $HOME/.config/
