# dotfiles

These are configuration files for some programs I use.

This repository exists mostly for when I invariably do something very stupid and break my whole system,
so I can recover without having to spend extra time doing all the rice again.

My setup is an Arch machine, with [Sway](https://wiki.archlinux.org/title/Sway) as the window manager.

## Programs I use

Togehter with the package names on either official Arch repositories or the AUR:

 - Sway (`sway`): wlroots based tiling window manager
 - Rofi (`rofi-lbonn-wayland-git`): quick app launching

## Applying dotfiles

If you want to use some of my config files, install `stow`, place this Git repository at your home directory and run `stow <package_name>`, for each package you want to use.

If you want to use Sway config files, for example, run `stow sway`.

Remember not to delete the directory, as the config files will now be symlinks.
