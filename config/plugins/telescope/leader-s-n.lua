function()
  require('telescope.builtin').find_files {
    cwd = vim.fn.stdpath 'config'
  }
end