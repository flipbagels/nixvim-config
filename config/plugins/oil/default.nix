{
  plugins.oil = {
    enable = true;
    settings = {
      default_file_explorer = true;
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