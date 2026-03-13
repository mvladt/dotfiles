#!/bin/bash
# Скрипт установки нужных мне apt-пакетов

set -e

sudo apt update

sudo apt install -y bat git neovim tree
