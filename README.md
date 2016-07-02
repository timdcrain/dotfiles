Dotfiles
========

Programs
--------

This repository contains configuration for the following programs. They are
not all required, however some configs rely on other programs being present
(for instance, i3 has key bindings for rofi).

* firefox
* git
* gtk
* hangups
* i3-wm
* ranger
* rofi
* vim
* vimperator (firefox)
* zathura

Dependencies
------------

The following packages are dependencies for the above programs that you will
need to install yourself:

i3-wm:

* amixer
* i3status
* rofi
* ttf-font-awesome

vim:

* Vundle

gtk:

* Centauri theme
* Super Flat Remix icon theme

Installation
------------

For easy installation, install GNU Stow and run `stow <package>`. The folder
structure under <package> will be transferred unchanged to the home directory.

The exception to this is Firefox, which will have to be copied into the `chrome`
directory of the user's profile.
