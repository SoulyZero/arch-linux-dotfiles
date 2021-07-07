#!/bin/sh

# By david studen <studen.david@gmail.com>
# Licence: GNU GPLv3

### functions ###

error() { echo "ERROR!"; exit 1; }

welcome() { \
	echo "Welcome";
    echo "This script will install my personal dotfiles";
    echo "Do you wish to proceed? yes/no";
    read ans
    case "$ans" in 
        "no")
            echo "Ok..";
            sleep 1;
            clear;
            exit 1;
            ;;
        *)
            ;;
        esac

}
### script ###

welcome || error

# installing dependencies

mkdir ~/.config

yay -Sy bpytop dunst i3-gaps kitty neofetch nitrogen neovim picom-tryone-git polybar ranger rofi key-mapper-git nvidia nvidia-utils xorg ttf-all-the-icons ttf-carlito ttf-carlito ttf-dejavu ttf-font-awesome ttf-hack ttf-hanazono ttf-hellvetica ttf-jetbrains-mono ttf-liberation ttf-material-design-icons-git ttf-ms-fonts ttf-win10 ttf-windows || { echo "Please enable yay"; exit 1; }

# cloning
git clone "https://github.com/dstuden/ArchLinux-dotfiles.git" || { echo "Please install git"; exit 1; };
mv ArchLinux-dotfiles/.p10k.zsh ~/;
mv ArchLinux-dotfiles/.vimrc ~/;
mv ArchLinux-dotfiles/xinitrc ~/;
mv ArchLinux-dotfiles/.zshrc ~/;
mv ArchLinux-dotfiles/Wallpapers ~/;
mv ArchLinux-dotfiles/scripts ~/;
mv ArchLinux-dotfiles/.config/* ~/.config

