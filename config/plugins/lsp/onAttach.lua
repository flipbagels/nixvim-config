-- Highlight references of word under cursor during CursorHold and clears highlights when cursor is moved
if client and client.supports_method(vim.lsp.protocol.Methods.textDocument_documentHighlight) then
  local highlight_augroup = vim.api.nvim_create_augroup('lsp-highlight', { clear = false })
  vim.api.nvim_create_autocmd({ 'CursorHold', 'CursorHoldI' }, {
    buffer = bufnr,
    group = highlight_augroup,
    callback = vim.lsp.buf.document_highlight,
  })

  vim.api.nvim_create_autocmd({ 'CursorMoved', 'CursorMovedI' }, {
    buffer = bufnr,
    group = highlight_augroup,
    callback = vim.lsp.buf.clear_references,
  })

  -- Clears highlights when LSP is detached
  vim.api.nvim_create_autocmd('LspDetach', {
    group = vim.api.nvim_create_augroup('lsp-detach', { clear = true }),
    callback = function(event2)
      vim.lsp.buf.clear_references()
      vim.api.nvim_clear_autocmds { group = 'lsp-highlight', buffer = event2.buf }
    end,
  })
end

-- Toggle inlay hints if language server supports them
vim.keymap.set(
  'n',
  '<leader>th',
  function()
    vim.lsp.inlay_hint.enable(not vim.lsp.inlay_hint.is_enabled { bufnr = bufnr })
  end,
  { buffer = bufnr, desc = 'LSP: [T]oggle Inlay [H]ints' }
)
