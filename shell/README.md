## Shell

You are on Mac, so you have to use `zsh`. I prefer building it with what I need, one step at a time, to using larger solutions like `oh-my-zsh`.

### Autocompletion

#### Case-insensitive autocompletion

Include in the `.zshrc`:

```
autoload -Uz compinit && compinit
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}'
```

#### Fuzzy-finder

Use `fzf` directly from the shell, for example:
 - `Ctrl + R`: recall previous commands with `fzf`;
 - `Ctrl + T`: include a file in the current command with `fzf`.

Install:
```
brew install fzf
```

Include in the `.zshrc`:
```
source <(fzf --zsh)
```

#### Syntax highlighting

Install:
```
brew install zsh-syntax-highlighting
```

Add to `.zshrc`:
```
source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
```

#### Autojump

Install:
```
brew install autojump
```

Add to `.zshrc`:
```
source /opt/homebrew/etc/profile.d/autojump.sh
```
