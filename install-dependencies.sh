#!/bin/bash

MAIN_DEPEND=("niri" "foot" "fuzzel" "nautilus" "hypridle" "hyprlock" "pipewire" "wireplumber" "brightnessctl" "util-linux" "xwayland-satellite" "hyprpolkitagent" "mako" "hyprpaper" "tlp" "wev" "networkmanager" "nm-connection-editor" "ttf-jetbrains-mono-nerd")
BUILD_DEPEND=("make")
AUR_DEPEND=("nautilus-open-any-terminal")

installMain()
{
	sudo pacman -S ${MAIN_DEPEND[@]}
}

installMain
