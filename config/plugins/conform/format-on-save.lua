function(bufnr)
  local disable_filetypes = { c = true, cpp = true, nix = true }
  local lsp_format_opt
  if disable_filetypes[vim.bo[bufnr].filetype] then
    lsp_format_opt = 'never'
  else
    lsp_format_opt = 'fallback'
  end
  return {
    timeout_ms = 500,
    lsp_format = lsp_format_opt,
  }
end
