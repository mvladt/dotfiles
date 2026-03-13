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
```

### Алиасы (.myrc)

```bash
echo 'source ~/dotfiles/.myrc' >> ~/.bashrc
# или для zsh
echo 'source ~/dotfiles/.myrc' >> ~/.zshrc
```

### Пакеты

```bash
bash ~/dotfiles/apt-install.sh
```
