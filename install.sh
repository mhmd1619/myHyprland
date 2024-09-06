#!/usr/bin/bash

read -p "Start Installation (y/n) " answer

if [[ "$answer" == "y" || "$answer" == "Y" || "$answer" == "yes" || "$answer" == "YES" ]]; then
  if command -v paru >/dev/null; then
    echo "paru Installed"
  elif command -v yay >/dev/null; then
    echo "yay Installed"
  else
    cd $HOME
    git clone https://aur.archlinux.org/paru.git
    cd paru
    makepkg --noconfirm -si
  fi
else
  echo "sorry"
  exit
fi
