{
  plugins = {
    # dependencies
    luasnip = { enable = true; }; # Luasnip now ships with jsregexp so no need to declare explicitly https://github.com/NixOS/nixpkgs/issues/306367
    cmp-nvim-lsp = { enable = true; };
    cmp-path = { enable = true; };

    cmp = {
      enable = true;
      settings = {
        snippet = {
          expand = builtins.readFile ./expand.lua;
        };
        completion = {
          completeopt = "menu,menuone,noinsert";
        };
        mapping = { # Read :help ins-completion
          "<C-n>" = "cmp.mapping.select_next_item()";
          "<C-p>" = "cmp.mapping.select_prev_item()";
          "<C-b>" = "cmp.mapping.scroll_docs(-4)";
          "<C-f>" = "cmp.mapping.scroll_docs(4)";
          "<C-y>" = "cmp.mapping.confirm { select = true }";
          "<C-Space>" = "cmp.mapping.complete()";
          "<C-l>" = builtins.readFile ./C-l.lua;
          "<C-h>" = builtins.readFile ./C-h.lua;
        };
        autoEnableSources = true; # Technically we wouldn't need to enable each of the dependencies above with this set to true
        sources = [
          { name = "luasnip"; }
          { name = "nvim_lsp"; }
          { name = "path"; }
        ];
      };
    };
  };
}