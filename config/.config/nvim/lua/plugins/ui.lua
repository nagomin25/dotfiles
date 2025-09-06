return {
  {
    'vim-airline/vim-airline',
    dependencies = {
      'vim-airline/vim-airline-themes',
      'ryanoasis/vim-devicons',  -- または 'nvim-tree/nvim-web-devicons'
    },
    event = 'VimEnter',  -- 起動時に読み込み
    config = function()
      -- airline の設定
      vim.g.airline_powerline_fonts = 1
      vim.g.airline_theme = 'dark'  -- お好みのテーマに変更
      
      -- タブラインを有効化
      vim.g['airline#extensions#tabline#enabled'] = 1
      vim.g['airline#extensions#tabline#formatter'] = 'unique_tail'
      
      -- その他のカスタマイズ
      vim.g['airline#extensions#branch#enabled'] = 1  -- gitブランチ表示
      vim.g['airline#extensions#hunks#enabled'] = 1   -- git差分表示
    end
  },
}
