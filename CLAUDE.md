# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Назначение репозитория

Dotfiles для быстрой настройки новых машин: конфиги Claude Code, shell-алиасы и скрипты установки пакетов.

## Установка на новой машине

```bash
# Клонирование
git clone git@github.com:mvladt/dotfiles.git ~/dotfiles

# Claude Code (симлинки)
ln -sf ~/dotfiles/.claude/settings.json ~/.claude/settings.json
ln -sf ~/dotfiles/.claude/skills ~/.claude/skills

# Shell алиасы
echo 'source ~/dotfiles/.myrc' >> ~/.bashrc   # bash
echo 'source ~/dotfiles/.myrc' >> ~/.zshrc    # zsh

# Пакеты (порядок важен: сначала системный менеджер, потом npm)
# Linux:
bash ~/dotfiles/1-apt-install.sh && bash ~/dotfiles/2-npm-install.sh
# macOS:
bash ~/dotfiles/1-brew-install.sh && bash ~/dotfiles/2-npm-install.sh
```

## Структура

- `.claude/settings.json` — настройки Claude Code: язык (Russian), автообновление отключено, разрешения инструментов
- `.claude/skills/` — пользовательские skills для Claude Code (`commit`, `nodejs-tests`, `nodejs-e2e-tests`)
- `.myrc` — shell-алиасы (`cat` → `batcat`, `ll`, `l`)
- `1-apt-install.sh` — установка apt-пакетов: bat, git, neovim, tree, nodejs (через NodeSource LTS), tmux
- `1-brew-install.sh` — установка brew-пакетов для macOS: bat, git, neovim, tree, node, tmux
- `2-npm-install.sh` — установка npm-пакетов: `@anthropic-ai/claude-code`

## Коммиты

Используй skill `/commit`. Сообщения коммитов — на русском языке, глагол в прошедшем времени от первого лица (пример: «Добавил алиас для git»). Каждый коммит должен отражать одно логическое действие — если изменения несвязанные, разбивай на несколько коммитов.
