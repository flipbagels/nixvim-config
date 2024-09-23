{ pkgs, ... }:

{
  plugins.treesitter = {
    enable = true;

    # All grammars installed by default so no need for ensure_installed option
    settings = {
      highlight = { enable = true; };
      indent = { enable = true; };
    };
  };
}