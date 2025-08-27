-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

-- ペースト時の自動インデント無効化
vim.opt.paste = false

-- システムクリップボードとの統合
vim.opt.clipboard = "unnamedplus"

-- 改行コード自動検出
vim.opt.fileformats = { "unix", "dos", "mac" }
