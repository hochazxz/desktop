# 🌌 Sway Dotfiles | Arch Linux

> Minimalist setup for SwayWM. 🚀

### 📸 Preview
![Desktop Preview](https://raw.githubusercontent.com/hochazxz/Imgacu/refs/heads/main/20260201_12h51m16s_grim.png)

### 🛠️ Quick Info
- **WM:** SwayFX
- **Bar:** Waybar
- **Terminal:** Foot
- **Shell:** Zsh / Oh-my-zsh
- **File Manager:** Yazi / Nemo

# Installation
1. Install all dependencies
```
bash brightnessctl btop calcurse cava cliphist dex \
fastfetch foot gammastep git grim imagemagick imv \
lazygit librewolf-bin libnotify mako mpc mpd mpv \
ncmpcpp nemo neovim network-manager-applet noto-fonts \
noto-fonts-cjk noto-fonts-emoji papirus-icon-theme \
pavucontrol pipewire pipewire-pulse playerctl \
polkit-gnome ranger rofi-wayland sed slurp \
swaybg swayfx swayidle swaylock-effects tmux \
ttf-fira-sans ttf-firacode-nerd ttf-nerd-fonts-symbols \
udiskie waybar wireplumber wl-clipboard \
xdg-desktop-portal-wlr xorg-xwayland zsh

```
2. Clone this repo
```
git clone https://github.com/hochazxz/desktop.git
```
3. Backup all your files
4. Copy all files in `dotfiles` and paste to your `$HOME` folder
```
cp -rfT dotfiles/dotfiles $HOME/
```
5. Other setup
```
chsh -s /usr/bin/zsh
systemctl --user enable pipewire pipewire-pulse wireplumber
```
