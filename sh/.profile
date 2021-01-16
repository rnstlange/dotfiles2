export EDITOR=vim

export XDG_CONFIG_HOME=$HOME/.config
export XDG_CACHE_HOME=$HOME/.cache
export XDG_DATA_HOME=$HOME/.local/share
export XDG_BIN_HOME=$HOME/.local/bin

export PATH="$PATH:$XDG_BIN_HOME"

### XDG Base Directory

# Less config
export LESSKEY=$XDG_CONFIG_HOME/less/lesskey
export LESSHISTFILE=$XDG_CACHE_HOME/less/history

# Shell config
export HISTFILE=$XDG_DATA_HOME/history

# BASH config

# ZSH config
export ZDOTDIR=$XDG_CONFIG_HOME/zsh

# Vim config
export VIMINIT="source $XDG_CONFIG_HOME/vim/vimrc"

# Rust config
export RUSTUP_HOME=$XDG_DATA_HOME/rustup
export CARGO_HOME=$XDG_DATA_HOME/cargo
export PATH="$PATH:$CARGO_HOME/bin"
# Go config
export GOPATH=$XDG_DATA_HOME/go

# Elixir config
export MIX_HOME=$XDG_DATA_HOME/mix

# Firefox config
export MOZ_X11_EGL=1
