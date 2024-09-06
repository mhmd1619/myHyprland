#!/usr/bin/bash

function pacman() {
  sudo sed -i 's/#Color/Color/g' /etc/pacman.conf
  sudo sed -i 's/#ParallelDownloads/ParallelDownloads/g' /etc/pacman.conf
  sudo sed -i '/ParallelDownloads/a\ILoveCandy' /etc/pacman.conf
}

function setup() {
  ./packages.sh
  sudo systemctl enable gdm.service
  sudo systemctl enable bluetooth
}

function coping() {
  cp -r ./.config $HOME/.config
  cp -r ./.config/rofi $HOME/.local/share
  cp .zshrc $HOME
}

function zsh() {
  cd $HOME
  sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
  git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
  git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
}

function aur() {
  if command -v paru >/dev/null; then
    ./paru.sh
  elif command -v yay >/dev/null; then
    ./yay.sh
  else
    ./aur.sh
    if [ $? -ne 0 ]; then
      echo "failed. Aborting."
      exit 1
    fi
    cd $HOME/myHyprland
    aur
  fi
}

read -p "Start Installation (Y/N) " answer

if [[ "$answer" == "y" || "$answer" == "Y" || "$answer" == "yes" || "$answer" == "YES" ]]; then
  chmod +x ./*
  pacman
  setup
  coping
  zsh
  aur
else
  echo "Not now"
  exit
fi
