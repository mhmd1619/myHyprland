#Update
sudo pacman -Syu

set -e

sudo pacman -S --needed --noconfirm polkit polkit-gnome hyprland hyprlock hyprcursor hyprpicker swww xdg-desktop-portal-hyprland xdg-desktop-portal-gtk \
  git curl wget unzip unrar waybar xdg-user-dirs brightnessctl playerctl pamixer font-manager evince \
  man qt6-wayland qt5-wayland grim slurp nano micro xorg-xhost nm-connection-editor network-manager-applet \
  noto-fonts noto-fonts-emoji ttf-liberation ttf-dejavu ttf-firacode-nerd \
  upower power-profiles-daemon \
  nwg-look kvantum qt6ct \
  bluez blueberry \
  wl-clipboard cliphist nwg-clipman wofi \
  nautilus nautilus-share nautilus-image-converter sushi gvfs ffmpegthumbnailer tumbler libgsf webp-pixbuf-loader gvfs-mtp gvfs-gphoto2 gvfs-afc gvfs-smb file-roller \
  mpv gimp shotwell \
  breeze gnome-themes-extra \
  firefox \
  libreoffice-still hunspell gnome-text-editor \
  fish starship \
  gdm \
  ghostty \
  mako \
  fastfetch htop btop nwg-displays \
  gnome-keyring libsecret

# enable services
sudo systemctl enable gdm
sudo systemctl enable bluetooth

# Home dirs
xdg-user-dirs-update


if command -v paru &>/dev/null; then
  echo "paru installed"
  paru -S --noconfirm --needed google-chrome brave-bin \
      waypaper \
      visual-studio-code-bin \
      ttf-ms-win11-auto \
      bibata-cursor-theme-bin \
      wlogout
else
  echo "paru not installed"
  cd $HOME
  git clone https://aur.archlinux.org/paru.git
  cd paru
  makepkg --noconfirm -si
  paru -S --noconfirm --needed google-chrome brave-bin \
    waypaper \
    visual-studio-code-bin \
    ttf-ms-win11-auto \
    bibata-cursor-theme-bin \
    wlogout \
    yaru-gtk-theme \
    yaru-icon-theme
fi
