-- Schedule the setting after `UiEnter` to decrease startup time
vim.schedule(function()
  -- Syncs clipboard between OS and Neovim
  vim.opt.clipboard = 'unnamedplus'
end)