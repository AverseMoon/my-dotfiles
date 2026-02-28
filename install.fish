#!/bin/fish

# ------------------------------
# Install packages
# ------------------------------
yay -S --needed \
hyprland \
hyprpolkitagent \
xdg-desktop-portal-hyprland \
waybar \
hyprpaper \
swaync \
hyprlock \
xwaylandvideobridge \
wvkbd-mobintl \
alacritty \
dolphin \
firefox \
discord \
spotify \
moonlight \
zed \
anyrun \
playerctl \
brightnessctl \
wpctl \
blueman \
networkmanager-applet \
kvantum \
breeze \
grim \
slurp \
xdg-desktop-portal \
pipewire \
pipewire-pulse \
pipewire-jack \
wl-clipboard

# ------------------------------
# Create config directories
# ------------------------------
mkdir -p $HOME/.config/hypr/
mkdir -p $HOME/.config/waybar/
mkdir -p $HOME/.config/alacritty/

# ------------------------------
# Hyprland configs
# ------------------------------
if test -e $HOME/.config/hypr/hyprland.conf.bak
    read -P "Backup hyprland.conf.bak exists. Delete it? (y/n) " ans
    if test $ans = "y"
        rm $HOME/.config/hypr/hyprland.conf.bak
    end
end
[ -e $HOME/.config/hypr/hyprland.conf ] && mv $HOME/.config/hypr/hyprland.conf $HOME/.config/hypr/hyprland.conf.bak
cp ./hyprland.conf $HOME/.config/hypr/hyprland.conf

if test -e $HOME/.config/hypr/hyprlock.conf.bak
    read -P "Backup hyprlock.conf.bak exists. Delete it? (y/n) " ans
    if test $ans = "y"
        rm $HOME/.config/hypr/hyprlock.conf.bak
    end
end
[ -e $HOME/.config/hypr/hyprlock.conf ] && mv $HOME/.config/hypr/hyprlock.conf $HOME/.config/hypr/hyprlock.conf.bak
cp ./hyprlock.conf $HOME/.config/hypr/hyprlock.conf

# ------------------------------
# Waybar configs
# ------------------------------
if test -e $HOME/.config/waybar/config.jsonc.bak
    read -P "Backup config.jsonc.bak exists. Delete it? (y/n) " ans
    if test $ans = "y"
        rm $HOME/.config/waybar/config.jsonc.bak
    end
end
[ -e $HOME/.config/waybar/config.jsonc ] && mv $HOME/.config/waybar/config.jsonc $HOME/.config/waybar/config.jsonc.bak
cp ./config.jsonc $HOME/.config/waybar/config.jsonc

if test -e $HOME/.config/waybar/style.css.bak
    read -P "Backup style.css.bak exists. Delete it? (y/n) " ans
    if test $ans = "y"
        rm $HOME/.config/waybar/style.css.bak
    end
end
[ -e $HOME/.config/waybar/style.css ] && mv $HOME/.config/waybar/style.css $HOME/.config/waybar/style.css.bak
cp ./style.css $HOME/.config/waybar/style.css

# ------------------------------
# Alacritty config
# ------------------------------
if test -e $HOME/.config/alacritty/alacritty.toml.bak
    read -P "Backup alacritty.toml.bak exists. Delete it? (y/n) " ans
    if test $ans = "y"
        rm $HOME/.config/alacritty/alacritty.toml.bak
    end
end
[ -e $HOME/.config/alacritty/alacritty.toml ] && mv $HOME/.config/alacritty/alacritty.toml $HOME/.config/alacritty/alacritty.toml.bak
cp ./alacritty.toml $HOME/.config/alacritty/alacritty.toml
