cmp.mapping(
  function()
    if luasnip.expand_or_locally_jumpable() then
      luasnip.expand_or_jump()
    end
  end,
  { 'i', 's' }
)