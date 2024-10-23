{
  plugins.fugitive = {
    enable = true;
  };

  keymaps = [
    {
      mode = "n";
      key = "<leader>g";
      action = "<cmd>Git<CR>";
    }
    {
      mode = "n";
      key = "<leader>gs";
      action = "<cmd>Git status<CR>";
    }
    {
      mode = "n";
      key = "<leader>ga";
      action = "<cmd>Git add *<CR>";
    }
    {
      mode = "n";
      key = "<leader>gp";
      action = "<cmd>Git push<CR>";
    }
  ];
}
