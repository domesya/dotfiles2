ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=#0066aa,bg=pink,bold,underline"

# history
HISTFILE="$HOME/.local/share/shells/.zsh_history"
HISTSIZE=1000
SAVEHIST=10000

# Append to history file immediately instead of overwriting on exit
setopt SHARE_HISTORY

# Do not enter duplicate lines into the history list
setopt HIST_IGNORE_DUPS

# Remove superfluous blanks from history commands
setopt HIST_REDUCE_BLANKS

# Enable ignoring commands that start with a space
setopt HIST_IGNORE_SPACE

# Basic auto/tab complete:
autoload -Uz +X compinit && compinit

zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}'
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit
_comp_options+=(globdots)		# Include hidden files.

. ~/.local/share/zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
. ~/.local/share/zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
