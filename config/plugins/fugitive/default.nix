{
  plugins.fugitive = {
    enable = true;
  };

  keymaps = [
    {
      mode = "n";
      key = "<leader>gg";
      action = "<cmd>Git<CR>";
    }
    {
      mode = "n";
      key = "<leader>gs";
      action = "<cmd>Git status<CR>";
    }
    {
      mode = "n";
      key = "<leader>ga*";
      action = "<cmd>Git add *<CR>";
    }
    {
      mode = "n";
      key = "<leader>gp";
      action = "<cmd>Git push<CR>";
    }
    {
      mode = "n";
      key = "<leader>gd";
      action = "<cmd>Git diff<CR>";
    }
    {
      mode = "n";
      key = "<leader>gc";
      action = "<cmd>Git commit<CR>";
    }
  ];
}
