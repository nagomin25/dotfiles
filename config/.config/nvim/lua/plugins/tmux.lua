return {
  -- airline (tmuxlineに必要)
  {
    'vim-airline/vim-airline',
    dependencies = {
      'vim-airline/vim-airline-themes',
    },
  },
  
  -- tmuxline
  {
    'edkolev/tmuxline.vim',
    dependencies = { 'vim-airline/vim-airline' },
    config = function()
      vim.g.tmuxline_preset = {
        a = '#S',
        b = '#W',
        c = '#H',
        win = '#I #W',
        cwin = '#I #W',
        x = '%a',
        y = {'%R', '%a', '%Y'},
        z = '#H'
      }
      vim.g.tmuxline_theme = 'airline'
    end,
  },
}

