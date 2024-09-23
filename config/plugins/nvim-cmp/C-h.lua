cmp.mapping(
  function()
    if luasnip.expand_or_locally_jumpable(-1) then
      luasnip.expand_or_jump(-1)
    end
  end,
  { 'i', 's' }
)