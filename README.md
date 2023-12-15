## System Apps Settings

To create symlinks to home dir for things like `zsh`, etc:
- `sudo apt-get install stow`
- `cd ~/.makks-system-settings`
- `stow zsh` will create symlinks for all files in `zsh` dir
