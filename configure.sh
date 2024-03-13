#!/bin/bash

# Define the source and target directories
DOTFILES_DIR=$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)
TARGET_DIR=~/
CONFIG_DIR=${TARGET_DIR}/.config/

# Create symbolic links for each config file
# Ensure target directories exist and then create the symbolic link
mkdir -p ${CONFIG_DIR}/i3
ln -sfn ${DOTFILES_DIR}/i3/config ${CONFIG_DIR}/i3/config

mkdir -p ${CONFIG_DIR}/kitty
ln -sfn ${DOTFILES_DIR}/kitty/kitty.conf ${CONFIG_DIR}/kitty/kitty.conf

mkdir -p ${CONFIG_DIR}/ranger
ln -sfn ${DOTFILES_DIR}/ranger/rc.conf ${CONFIG_DIR}/ranger/rc.conf

# Link the .tmux.conf file directly to the home directory
ln -sfn ${DOTFILES_DIR}/.tmux.conf ${TARGET_DIR}/.tmux.conf

echo "Symbolic links created successfully."
