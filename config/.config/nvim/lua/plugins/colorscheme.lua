return {

  -- LazyVimのデフォルトtokyonightを無効化
  {
    "folke/tokyonight.nvim",
    enabled = false,
  },

  
  -- solarized-osaka テーマを追加
  {
    "craftzdog/solarized-osaka.nvim",
    lazy = false,
    priority = 1000,
    opts = function()
      return {
        transparent = true,           -- 背景透過設定
        terminal_colors = true,       -- ターミナルカラーの設定
        styles = {
          sidebars = "transparent",   -- サイドバーのスタイル
          floats = "transparent",     -- フローティングウィンドウのスタイル
        },
      }
    end,
    config = function(_, opts)
      require("solarized-osaka").setup(opts)
      vim.cmd.colorscheme("solarized-osaka")
    end,
  },
}
