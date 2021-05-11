Dotfiles
========

Programs
--------

This repository contains configuration for the following programs. They are
not all required, however some configs rely on other programs being present
(for instance, i3 has key bindings for rofi).

* alacritty
* aur
* borg
* firefox
* git
* gtk
* i3-wm
* ranger
* rofi
* sway (desktop & pinephone)
* systemd
* tmux
* vim
* waybar (desktop & pinephone)
* wofi
* zathura
* zsh

Dependencies
------------

The following packages are dependencies for the above programs that you will
need to install yourself:

i3-wm:

* amixer
* dropbox
* i3status
* rofi
* otf-font-awesome

vim:

* Vundle

sway (desktop):

* alacritty
* brightnessctl
* otf-font-awesome
* python-i3ipc
* pavucontrol
* qt5-wayland (for QT apps)
* swayidle
* swaylock
* waybar
* wob
* wofi

sway (pinephone):

* jq
* otf-font-awesome
* swaylock
* termite
* waybar

Installation
------------

For easy installation, install GNU Stow and run `stow <package>`. The folder
structure under <package> will be transferred unchanged to the home directory.
