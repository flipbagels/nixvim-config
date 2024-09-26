{
  plugins.yazi = {
    enable = true;
  };
  keymaps = [
    {
      mode = "n";
      key = "<leader>-";
      action = "<CMD>Yazi<CR>";
      options = {desc = "Open yazi at current file";};
    }
  ];
}
