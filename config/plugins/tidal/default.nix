{ pkgs, ... }:

{
  # extraPlugins = [
  #   pkgs.vimPlugins."vim-tidal"
  # ];

  extraPlugins = [
    (pkgs.vimUtils.buildVimPlugin {
      name = "vim-tidal";
      src = pkgs.fetchFromGitHub {
        owner = "tidalcycles";
        repo = "vim-tidal";
        rev = "1.4.8";
        hash = "sha256-c12v9+s/JspQ9Am291RFI7eg0UAeXGDvJ5lK+7ukOb0=";
      };
    })
  ];
  extraConfigLua = ''
    vim.cmd("filetype plugin on")
    vim.g.tidal_target = "terminal"
    vim.g.tidal_ghci = "ghci"
    vim.api.nvim_set_var("tidal_boot", "ghci -XOverloadedStrings -XExtendedDefaultRules -XDataKinds -XTypeFamilies -XFlexibleContexts -XScopedTypeVariables -package tidal")
  '';
}
