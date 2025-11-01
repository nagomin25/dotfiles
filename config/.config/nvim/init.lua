-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")
vim.g.python3_host_prog = vim.fn.expand("~/python_env/bin/python")
vim.g.airline_theme = 'powerlineish'
