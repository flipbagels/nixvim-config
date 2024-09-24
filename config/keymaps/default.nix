{
  globals = {
    mapleader = " ";
    maplocalleader = " ";
  };

  keymaps = [
    {
      # Clear highlights on search when pressing <Esc> in normal mode
      mode = "n";
      key = "<Esc>";
      action = "<cmd>nohlsearch<CR>";
    }
    {
      # Exit terminal with <Esc><Esc> instead of <C-\><C-n>
      mode = "t";
      key = "<Esc><Esc>";
      action = "<C-\\><C-n>";
      options = {desc = "Exit terminal mode";};
    }
    {
      # Window switching
      mode = "n";
      key = "<C-h>";
      action = "<C-w><C-h>";
      options = {desc = "Move focus to the left window";};
    }
    {
      # Window switching
      mode = "n";
      key = "<C-l>";
      action = "<C-w><C-l>";
      options = {desc = "Move focus to the right window";};
    }
    {
      # Window switching
      mode = "n";
      key = "<C-j>";
      action = "<C-w><C-j>";
      options = {desc = "Move focus to the lower window";};
    }
    {
      # Window switching
      mode = "n";
      key = "<C-k>";
      action = "<C-w><C-k>";
      options = {desc = "Move focus to the upper window";};
    }
  ];
}
