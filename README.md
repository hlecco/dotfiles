# dotfiles

These are configuration files for some programs I use.

This repository exists mostly for when I invariably do something very stupid and break my whole system,
so I can recover without having to spend extra time doing all the rice again.

My setup is an Arch machine, with [Sway](https://wiki.archlinux.org/title/Sway) as the window manager.

## Programs I use

Togehter with the package names on either official Arch repositories or the AUR:

 - Sway (`sway`): wlroots based tiling window manager
 - Rofi (`rofi-lbonn-wayland-git`): quick app launching
 - NeoMutt (`neomutt`): awesome terminal mail client (on `mail` dir)
 - MBsync (`mbsync`): offline sync mailboxes (on `mail` dir)
 - Urlscan (`urlscan`): Mutt and terminal URL selector
 - dragon (`dragon-drag-and-drop`): drag and drop a single file
 - fzf (`fzf`): command-line fuzzy finder
 - termite (`termite`): Wayland-native terminal
 - KeePassXC (`keepassxc`): password manager
 - handlr (`handlr-bin`): easily set MIME type and extension associations
 - PipeWire (`pipewire`, `pipewire-pulse`, `pipewire-jack`, `pipewire-alsa`, `pipewire-media-session`, `pipewire-jack-dropin`): low-latency audio that just works
 - Neovim (`neovim`): Vim, but *neo*
 - ble.sh (`blesh`): cool stuff for Bash, like better completion

These packages should be enough for setting up the environment

## Applying dotfiles

If you want to use some of my config files, install `stow`, place this Git repository at your home directory and run `stow <package_name>`, for each package you want to use.

If you want to use Sway config files, for example, run `stow sway`.

Remember not to delete the directory, as the config files will now be symlinks.

### Placeholders

Some dotfiles have <++> as placeholders where personal data would be stored.
If you want to use my dotfiles, it is a good ideia to mantain a personal branch replacing them.
