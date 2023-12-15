# To add install new plugins use git subtree:
# git subtree add --prefix plugins/plugin-name "https://github.com/plugin-url" master --squash


# Replace zsh's default completion selection menu with fzf
source ~/.zsh/plugins/fzf-tab/fzf-tab.plugin.zsh

## preview directory's content with exa when completing cd
zstyle ':fzf-tab:complete:cd:*' fzf-preview 'lsd -1Ahrv --ignore-config --color=always --group-dirs=first --icon=always --icon-theme=fancy $realpath'
## switch group using `,` and `.`
zstyle ':fzf-tab:*' switch-group ',' '.'


# Syntax highlighting
source ~/.zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.plugin.zsh

## Override some colours
typeset -A ZSH_HIGHLIGHT_STYLES
ZSH_HIGHLIGHT_STYLES[unknown-token]='fg=red'
ZSH_HIGHLIGHT_STYLES[path]='fg=cyan'


# Autosuggestions
source ~/.zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.plugin.zsh

## Accept suggestion with SHIFT+TAB
bindkey '^[[Z' autosuggest-accept
ZSH_AUTOSUGGEST_STRATEGY=(history completion)


# Substring search
source ~/.zsh/plugins/zsh-history-substring-search/zsh-history-substring-search.plugin.zsh
bindkey -M vicmd 'k' history-substring-search-up
bindkey -M vicmd 'j' history-substring-search-down


# Marks
FZF_MARKS_FILE="$XDG_CONFIG_HOME/.fzf-marks"
source ~/.zsh/plugins/fzf-marks/fzf-marks.plugin.zsh
