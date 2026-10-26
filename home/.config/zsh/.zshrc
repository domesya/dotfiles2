ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=#0066aa,bg=pink,bold,underline"

_data_dir="${XDG_DATA_HOME:-$HOME/.local/share}"
_config_dir="${XDG_CONFIG_HOME:-$HOME/.config}"

fpath=($HOME/.config/zsh/functions $fpath)

# history
HISTFILE="${_data_dir}/shells/.zsh_history"
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
autoload -Uz +X compinit

zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}'
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit
_comp_options+=(globdots)		# Include hidden files.

. "${_data_dir}/zsh/zsh-autosuggestions/zsh-autosuggestions.zsh"
. "${_data_dir}/zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh"

[ -f "${_config_dir}/shell/profile" ] && . "${_config_dir}/shell/profile"
[ -f "${_config_dir}/shell/aliases" ] && . "${_config_dir}/shell/aliases"

[ -f "${_config_dir}/zsh/.zprofile" ] && . "${_config_dir}/zsh/.zprofile"

eval "$(starship init zsh)"
