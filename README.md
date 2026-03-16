# dotfiles

Конфигурационные файлы для новых машин.

## Установка

```bash
git clone git@github.com:mvladt/dotfiles.git ~/dotfiles
```

### Claude Code

```bash
ln -sf ~/dotfiles/.claude/settings.json ~/.claude/settings.json
ln -sf ~/dotfiles/.claude/skills ~/.claude/skills
ln -sf ~/dotfiles/.claude/CLAUDE.md ~/.claude/CLAUDE.md
```

### Алиасы (.myrc)

```bash
echo 'source ~/dotfiles/.myrc' >> ~/.bashrc
# или для zsh
echo 'source ~/dotfiles/.myrc' >> ~/.zshrc
```

### Пакеты

**Linux (apt):**
```bash
bash ~/dotfiles/1-apt-install.sh
bash ~/dotfiles/2-npm-install.sh
```

**macOS (brew):**
```bash
bash ~/dotfiles/1-brew-install.sh
bash ~/dotfiles/2-npm-install.sh
```
