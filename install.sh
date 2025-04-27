#!/bin/bash

pkgs=(
  uwsm
  hyprland
  hyprpolkitagent
  hyprlock
  hyprcursor
  hyprpicker
  xdg-desktop-portal-hyprland
  xdg-desktop-portal-gtk
  swww
  polkit
  git
  curl
  wget
  man
  nano
  micro
  unzip
  unrar
  grim
  slurp
  qt5-wayland
  qt6-wayland
  xorg-xhost
  brightnessctl
  pamixer
  playerctl
  pavucontrol
  font-manager
  evince
  qt6ct
  kvantum
  nwg-look
  noto-fonts
  noto-fonts-emoji
  ttf-liberation
  ttf-dejavu
  ttf-firacode-nerd
  wl-clipboard
  cliphist
  firefox
  libsecret
  gnome-keyring
  htop
  btop
  fastfetch
  sddm
  mpv
  bluez
  blueberry
  kitty
  waybar
  wofi
  thunar
  gvfs
  gvfs-mtp
  gvfs-gphoto2
  gvfs-afc
  gvfs-smb
  xarchiver
  thunar-archive-plugin
  thunar-media-tags-plugin
  thunar-shares-plugin
  thunar-volman
  ffmpegthumbnailer
  tumbler
  libgsf
  webp-pixbuf-loader
  xdg-user-dirs
  papirus-icon-theme
  gimp
  fish
  starship
  nm-connection-editor
  network-manager-applet
  mako
  loupe
)

installPackages() {
  echo "Installing packages..."
  if ! sudo pacman -S --needed "${pkgs[@]}"; then
    echo "Error: Failed to install packages." >&2
    exit 1
  fi
}

aurPackages() {
  if command -v paru &>/dev/null; then
    echo "paru installed"
    paru -S --noconfirm --needed google-chrome brave-bin \
      waypaper \
      visual-studio-code-bin \
      ttf-ms-win11-auto \
      bibata-cursor-theme-bin
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
      bibata-cursor-theme-bin
  fi
}

postInstall() {
  echo "Performing post-installation tasks..."
  if ! sudo systemctl enable bluetooth; then
    echo "Error: Failed to enable Bluetooth service." >&2
  fi
  if ! sudo systemctl enable sddm; then
    echo "Error: Failed to enable SDDM service." >&2
  fi
  if ! systemctl --user enable --now hyprpolkitagent.service; then
    echo "Error: Failed to enable hyprpolkitagent.service." >&2
  fi
  xdg-user-dirs-update
  cp -r $HOME/myHyprland/.config $HOME/.config
}

main() {
  installPackages
  aurPackages
  postInstall
}

main
