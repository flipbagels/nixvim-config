{ pkgs, ... }:

{
  extraPlugins = with pkgs.vimPlugins; [
    "vim-tidal"
  ];
}
