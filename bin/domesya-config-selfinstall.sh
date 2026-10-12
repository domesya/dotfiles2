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

_install_the_zsh() {
    cp -r "${_base_dir}/home/.config/zsh" "$_config_dir"
    cp -r "${_base_dir}/home/.config/shell" "$_config_dir"
    cp -r "${_base_dir}/home/.local/share/zsh" "$_data_dir"
    cp -r "${_base_dir}/home/.zshenv" "$_home_dir"
}

_install_the_nvim() {
    echo "This config needs NvChad to work as intended! Make sure you have it installed if you really wish to use this config!"
    cp -r "${_base_dir}/home/.config/nvim" "$_config_dir"
}

_parse_arguments() {
    case "${1:-}" in
        nvim) _prepare_dirs; _install_the_nvim;
            ;;
        zsh) _prepare_dirs; _install_the_zsh;
            ;;
    esac
}

