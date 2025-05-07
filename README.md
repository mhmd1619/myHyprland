# myHyprland Dotfiles

This is my arch linux + hyprland setup + nordic

## Screenshots

<img alt="screenshot" src="./images/1.png">
<img alt="screenshot" src="./images/2.png">

## Details

- **OS**: Arch Linux
- **WM**: Hyprland
- **Terminal**: Kitty
- **System font**: Noto Sans Regular
- **Terminal Font**: FiraCode Nerd Font
- **Theme**: [Nordic darker](https://github.com/EliverLara/Nordic)
- **Icons**: [papirus-icon-theme](https://github.com/PapirusDevelopmentTeam/papirus-icon-theme)
- **Status bar**: Waybar
- **Launcher**: wofi
- **Shell**: fish
- **Prompt**: starship
- **File manager**: Thunar
- **Editor**: micro/vscode
- **Wallpaper**: swww -> waypaper
- **Color picker**: hyprpicker
- **Lock**: hyprlock
- **Clipboard**: cliphist
- **Wallpapers**: [minimalistic-wallpaper-collection](https://github.com/DenverCoder1/minimalistic-wallpaper-collection) & from wallheven
- **Bluetooth**: blueberry
  
 **Packages you can get with pacman** : 
```bash
sudo pacman -S hyprland kitty noto-fonts ttf-firacode-nerd papirus-icon-theme waybar wofi fish starship thunar micro code swww blueberry
```
**Packages you can get with yay (or your prefered aur helper)**:
```bash
yay -S nordic-theme waypaper hyprpicker hyprlock cliphist minimalistic-wallpaper-collection
```
## Installation process

1. **Download and configure Arch linux**
2. **Install hyprland and all required dependencies**

3. **Clone dotfiles**

```bash
git clone https://github.com/mhmd1619/myHyprland.git
```
4. **Enter dotfiles' dircetory**

```
cd myHyprland
```

5. **Chmod and run install.sh script**
```
chmod +x install.sh
./install.sh
```
6. **Clone all configs into their directories**

7. **Reboot**

```
reboot
```
8. **Enjoy your new and shiny dotfiles :D**

## Shortcuts

| Shortcut                    | Action                                                      |
|----------------------------|-------------------------------------------------------------|
| `SUPER + RETURN`           | Launch terminal (`kitty`)                                   |
| `SUPER + E`                | Launch file manager (`thunar`)                              |
| `SUPER + M`                | Launch application menu (`wofi`)                            |
| `SUPER + B`                | Launch browser (`google-chrome-stable`)                     |
| `SUPER + L`                | Lock the screen (`hyprlock`)                                |
| `SUPER + W`                | Logout menu (`wlogout`)                                     |
| `SUPER + T`                | Toggle floating                                              |
| `SUPER + F`                | Toggle fullscreen                                            |
| `SUPER + K`                | Kill active window                                          |
| `SUPER + DELETE`           | Exit Hyprland                                                |
| `SUPER + SHIFT + C`        | Launch color picker (`hyprpicker`)                          |
| `SUPER + V`                | Clipboard history via `wofi` and `cliphist`                 |
| `Print`                    | Full screenshot (`grim`) with notification                  |
| `SUPER + Print`           | Area screenshot (`grim + slurp`) with notification          |
| `SUPER + SHIFT + R`        | Change wallpaper randomly (`waypaper`)                      |
| `SUPER + P`                | Toggle pseudotiling                                         |
| `SUPER + J`                | Toggle split layout (dwindle)                               |



## Planned

- Make mpv look better
