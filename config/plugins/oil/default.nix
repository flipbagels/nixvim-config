{
  plugins.oil = {
    enable = true;
    settings = {
      default_file_explorer = true;
      keymaps = {
        "<C-h>" = false;
        "<C-j>" = false;
        "<C-k>" = false;
        "<C-l>" = false;
      };
    };
  };

  keymaps = [
    {
      mode = "n";
      key = "-";
      action = "<CMD>Oil<CR>";
      options = { desc = "Open parent directory"; };
    }
  ];
}
