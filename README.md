Dotfiles
========

Programs
--------

This repository contains configuration for the following programs. They are
not all required, however some configs rely on other programs being present
(for instance, i3 has key bindings for rofi).

* borg
* git
* gtk
* hangups
* i3-wm
* ranger
* rofi
* ssh
* tmux
* vim
* vimperator (firefox)
* zathura
* zsh

Dependencies
------------

The following packages are dependencies for the above programs that you will
need to install yourself:

i3-wm:

* amixer
* dropbox-cli
* i3status
* rofi
* ttf-font-awesome

vim:

* Vundle

Installation
------------

For easy installation, install GNU Stow and run `stow <package>`. The folder
structure under <package> will be transferred unchanged to the home directory.
