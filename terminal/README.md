## Terminal

The Mac built-in **Terminal.app** is enough.
In order to make it switch between light and dark automatically, there are some tips, though.

### Terminal.app

There are two themes. Head to `Settings > Profiles` and import both `configs/Light.terminal` and `configs/Dark.terminal`.

### Light / Dark cycle

#### Change terminal theme

Use [`auto-terminal-profile`](https://github.com/patrik-csak/auto-terminal-profile) to link the light and dark theme to the system theme.

#### CLI apps switching

In order to adapt the app themes, the idea is to have both light and dark dotfiles, and symlink the correct one to a file that will be sourced by the main config file.
Different apps may require different configurations, though.

For that, use the `scripts/autodark` file. A good idea is to execute it in the `.zshrc`. I could not find a simple way to trigger the script using events - nothing available on homebrew, only some programs that would require manual building and installing, which I don't really like.
Some of them didn't even work.

For each new app with dynamic color schemes, include its configuration in the script.
