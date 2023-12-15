# My variables
export XDG_CONFIG_HOME=${XDG_CONFIG_HOME:="$HOME/.config"}

## Program-specific variables
### Less
export LESSHISTFILE=-
### Editor
export EDITOR="nvim"

# Path
typeset -U PATH path
## Prepend
path=("$MY_RPS/bin" $path)
path=("$XDG_CONFIG_HOME/dwmblocks/blocks" $path)
## Append
path+=("$HOME/.local/bin")
path+=("$HOME/.local/share/cargo/bin")
export PATH

# Debugging option
#set -x
