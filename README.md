# My Dotfiles

WSL Ubuntu環境用の設定ファイルです。
LazyVimのテーマを変えただけです。これからいろいろプラグインを触って育てていこうと思っています。

## 🛠️ 使用ツール

- **Shell**: zsh + Oh-My-Zsh + Powerlevel10k
- **Editor**: Neovim (LazyVim + solarized-osaka theme)
- **Terminal**: Alacritty (透明度設定)
- **Multiplexer**: Zellij
- **Manager**: GNU Stow

## 📦 セットアップ

### 新しい環境での復元
```bash
git clone https://github.com/nagomin25/dotfiles.git ~/dotfiles
cd ~/dotfiles
stow config vim zsh
```

### 必要な依存関係
```bash
# 基本ツールのインストール
sudo apt update
sudo apt install zsh vim neovim stow git curl

# Oh-My-Zshのインストール
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Powerlevel10kテーマ
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ~/.oh-my-zsh/custom/themes/powerlevel10k
```

## 📁 ディレクトリ構成

```
~/dotfiles/
├── config/
│   └── .config/
│       ├── nvim/          # Neovim設定
│       └── zellij/        # Zellij設定
├── vim/
│   └── .vimrc            # Vim設定
├── zsh/
│   └── .zshrc            # Zsh設定
└── scripts/              # 便利スクリプト
```

## 🚀 使い方

### 設定の更新
```bash
# 設定ファイルを編集（例：Neovim）
vim ~/.config/nvim/init.lua

# 変更をプッシュ
cd ~/dotfiles
git add .
git commit -m "Update nvim config"
git push
```

### 新しい設定の追加
```bash
# 新しい設定ファイルを追加
mkdir -p ~/dotfiles/config/.config/git
vim ~/dotfiles/config/.config/git/config

# GNU Stowでリンク作成
cd ~/dotfiles
stow -R config
```

## ⚡ 主要なキーバインド

### Neovim (LazyVim)
- `<Space>e` - ファイルエクスプローラー
- `<Space>ac` - Claude Code起動
- `<Space>ff` - ファイル検索

### Zellij
- `Alt + t` - 新しいタブ
- `Alt + h/l` - タブ切り替え
- `Alt + |/-` - ペイン分割

---
🎨 **テーマ**: Solarized Osaka (透明度付き)
