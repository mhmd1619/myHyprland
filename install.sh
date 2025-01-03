#!/bin/bash
if command -v paru &>/dev/null; then
  echo "paru installed"
  source ./packages.sh
else
  echo "paru not installed"
  cd $HOME
  git clone https://aur.archlinux.org/paru.git
  cd paru
  makepkg --noconfirm -si
  source ./packages.sh
fi
