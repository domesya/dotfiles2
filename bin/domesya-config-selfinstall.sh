#!/bin/sh
_base_dir="$(readlink -f "$(dirname "$(readlink -f "$0")")"/..)"

# _zsh_dir="${XDG_CONFIG_HOME:-$HOME/.config}/zsh"
# _shells_dir="${XDG_CONFIG_HOME:-$HOME/.config}/shell"
# _zsh_scripts_dir="${XDG_DATA_HOME:-$HOME/.local/share}/zsh"
_zsh_hist_dir="${XDG_DATA_HOME:-$HOME/.local/share}/shells"

_data_dir="${XDG_DATA_HOME:-$HOME/.local/share}"
_config_dir="${XDG_CONFIG_HOME:-$HOME/.config}"
_home_dir="${HOME}"

_prepare_dirs() {
    # mkdir -p "$_zsh_dir"
    # mkdir -p "$_shells_dir"
    # mkdir -p "$_zsh_scripts_dir"
    # mkdir -p "$_zsh_hist_dir"
    mkdir -p "$_data_dir"
    mkdir -p "$_config_dir"
    mkdir -p "$_zsh_hist_dir"
}

_install_the_thing() {
    cp -r "${_base_dir}/home/.config/zsh" "$_config_dir"
    cp -r "${_base_dir}/home/.config/shell" "$_config_dir"
    cp -r "${_base_dir}/home/.local/share/zsh" "$_data_dir"
    cp -r "${_base_dir}/home/.zshenv" "$_home_dir"
}

_prompt() {
    printf "%s [y/N] " "${1:-Are you sure?}"
    read -r response || return 1
    case "$response" in
        [yY] | [yY][eE][sS]) return 0
            ;;
        *) return 1
            ;;
    esac
}

if _prompt "Do you want to install the thing?"; then
    echo "Proceeding..."
    _prepare_dirs || return 1
    _install_the_thing || { echo "Install failed!"; }
    echo "All done!"
else
    echo "Aborted by user."
    exit 0
fi
