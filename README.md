# 🌟 My Dotfiles

WSL Ubuntu環境用の設定ファイル管理リポジトリです。  
現在いろいろ整備中です。

## 🛠️ 使用ツール

| カテゴリ | ツール | 説明 |
|---------|--------|------|
| **Shell** | zsh + Oh-My-Zsh + Powerlevel10k | 高機能シェル環境 |
| **Editor** | Neovim | LazyVim + solarized-osaka theme |
| **Terminal** | Alacritty | 透明度設定対応 |
| **Multiplexer** | Zellij | モダンなターミナルマルチプレクサー |
| **Manager** | GNU Stow | シンボリックリンク管理 |

## 📦 Windows (WSL環境) でのセットアップ

### 🔧 必要な依存関係

#### 1. HackGenフォントのインストール（Windows側）
Alacrittyには**HackGenフォント**を指定しています。  
インストールされていないと起動できないので、先に以下から手動でWindowsにインストールしてください。

📥 **ダウンロード先**: https://github.com/yuru7/HackGen/releases  
※ `HackGen_NF_バージョン.zip` が必要なフォントが入ったzipです。

#### 2. Zellijのインストール（WSL側）
ターミナル起動時にzellijを同時起動するように設定してあるため、あらかじめ別のターミナルソフトを使用してWSL環境にインストールしてください。

📚 **参考リポジトリ**: https://github.com/zellij-org/zellij

> **Note**: Zellijのインストールには`cargo`が必要です。Rustをインストールすれば一緒に入るので、以下のコマンドでインストールしてください。
> ```bash
> curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
> ```

これでAlacrittyが実行できるようになります。

### 📋 基本ツールのインストール

```bash
# 基本ツールのインストール
sudo apt update
sudo apt install zsh vim neovim stow git curl

# Oh-My-Zshのインストール
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Powerlevel10kテーマ
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git \
    ~/.oh-my-zsh/custom/themes/powerlevel10k
```

### 🔄 新しい環境での復元

```bash
# リポジトリのクローン
git clone https://github.com/nagomin25/dotfiles.git ~/dotfiles
```

> ⚠️ **重要**: 既存の設定ファイルがある場合は、必ずバックアップを取ってから削除するか、クローンしてきたファイルと結合してください。

その後、以下のstowコマンドを実行してシンボリックリンクを作成：

```bash
cd ~/dotfiles
stow config zsh
```

ターミナルを再起動するか、zshを再読み込みしてください。

## 📁 ディレクトリ構成

```
~/dotfiles/
├── config/
│   └── .config/
│       ├── nvim/          # Neovim設定
│       └── zellij/        # Zellij設定
├── zsh/
│   └── .zshrc            # Zsh設定
└── scripts/              # 便利スクリプト
```

## 🚀 使い方

### ✏️ 設定の更新

```bash
# 設定ファイルを編集（例：Neovim）
vim ~/.config/nvim/init.lua

# 変更をプッシュ
cd ~/dotfiles
git add .
git commit -m "Update nvim config"
git push
```

### ➕ 新しい設定の追加

```bash
# 新しい設定ファイルを追加
mkdir -p ~/dotfiles/config/.config/git
vim ~/dotfiles/config/.config/git/config

# GNU Stowでリンク作成
cd ~/dotfiles
stow -R config
```

## ⚡ 主要なキーバインド

### 🎹 Neovim (LazyVim)
| キー | 動作 |
|------|------|
| `<Space>e` | ファイルエクスプローラー |
| `<Space>ac` | Claude Code起動 |
| `<Space>ff` | ファイル検索 |

### 🪟 Zellij
| キー | 動作 |
|------|------|
| `Alt + t` | 新しいタブ |
| `Alt + h/l` | タブ切り替え |
| `Alt + \|/-` | ペイン分割 |

---

### 🎨 テーマ
**Solarized Osaka** (透明度付き) - 目に優しく美しいカラースキーム
