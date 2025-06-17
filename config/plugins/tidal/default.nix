{ pkgs, ... }:

{
  extraPlugins = [
    (pkgs.vimUtils.buildVimPlugin {
      name = "vim-tidal";
      src = pkgs.fetchFromGitHub {
        owner = "tidalcycles";
        repo = "vim-tidal";
        rev = "1.4.8";
        hash = "sha256-c12v9+s/JspQ9Am291RFI7eg0UAeXGDvJ5lK+7ukOb0="; # replace with actual sha256 hash
      };
    })
  ];
}
