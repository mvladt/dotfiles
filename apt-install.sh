#!/bin/bash
# Скрипт установки нужных мне apt-пакетов

set -e

curl -fsSL https://deb.nodesource.com/setup_lts.x | sudo -E bash -

sudo apt update

sudo apt install -y bat git neovim tree nodejs
