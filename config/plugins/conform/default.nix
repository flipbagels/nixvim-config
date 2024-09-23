{ pkgs, lib, ... }:

{
  plugins.conform-nvim = {
    enable = true;
    settings = {
      notify_on_error = false;
      format_on_save = builtins.readFile ./format-on-save.lua;
      formatters_by_ft = {
        lua = [ "stylua" ];
        nix = [ "alejandra" ];
        python = ["isort" "black" ];
      };
      formatters = {
        stylua = { command = "${lib.getExe pkgs.stylua}"; };
        alejandra = { command = "${lib.getExe pkgs.alejandra}"; };
        isort = { command = "${lib.getExe pkgs.isort}"; };
        black = { command = "${lib.getExe pkgs.black}"; };
      };
    };
  };
}