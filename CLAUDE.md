# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Назначение репозитория

Dotfiles для быстрой настройки новых машин: конфиги Claude Code, shell-алиасы и скрипты установки пакетов.

## Структура

Инструкции по установке — в `README.md`.

- `.claude/settings.json` — настройки Claude Code: язык (Russian), автообновление отключено, разрешения инструментов
- `.claude/CLAUDE.md` — глобальные правила для Claude Code (симлинк на `~/.claude/CLAUDE.md`)
- `.claude/skills/` — пользовательские skills для Claude Code (`commit`, `nodejs-tests`, `nodejs-e2e-tests`)
- `.myrc` — shell-алиасы (`cat` → `batcat`, `ll`, `l`)
- `1-apt-install.sh` — установка apt-пакетов: bat, git, neovim, tree, nodejs (через NodeSource LTS), tmux
- `1-brew-install.sh` — установка brew-пакетов для macOS: bat, git, neovim, tree, node, tmux
- `2-npm-install.sh` — установка npm-пакетов: `@anthropic-ai/claude-code`

## Коммиты

Используй skill `/commit`. Сообщения коммитов — на русском языке, глагол в прошедшем времени от первого лица (пример: «Добавил алиас для git»). Каждый коммит должен отражать одно логическое действие — если изменения несвязанные, разбивай на несколько коммитов.
