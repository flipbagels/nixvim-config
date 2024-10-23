{
  plugins.fugitive = {
    enable = true;
  };

  keymaps = [
    {
      # Clear highlights on search when pressing <Esc> in normal mode
      mode = "n";
      key = "<leader>gs";
      action = "<cmd>Git<CR>";
    }
  ];
}
