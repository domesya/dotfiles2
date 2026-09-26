#!/bin/sh

XDG_CONFIG_HOME="${XDG_CONFIG_HOME:-$HOME/.config}"
export ZDOTDIR="${XDG_CONFIG_HOME:-$HOME/.config}/zsh"
. "$HOME/.cargo/env"
