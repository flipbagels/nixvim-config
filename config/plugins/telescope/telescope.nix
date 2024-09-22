{
  plugins.telescope = {
    enable = true;
    extensions = {
      fzf-native.enable = true;
      ui-select.enable = true;
    };
    settings = {
      extensions.__raw = "{ ['ui-select'] = { require('telescope.themes').get_dropdown() } }";
    };
    keymaps = {
      "<leader>sh" = {
        mode = "n";
        action = "help_tags";
        options = { desc = "[S]earch [H]elp"; };
      };
      "<leader>sk" = {
        mode = "n";
        action = "keymaps";
        options = { desc = "[S]earch [K]eymaps"; };
      };
      "<leader>sf" = {
        mode = "n";
        action = "find_files";
        options = { desc = "[S]earch [F]iles"; };
      };
      "<leader>ss" = {
        mode = "n";
        action = "builtin";
        options = { desc = "[S]earch [S]elect Telescope"; };
      };
      "<leader>sw" = {
        mode = "n";
        action = "grep_string";
        options = { desc = "[S]earch current [W]ord"; };
      };
      "<leader>sg" = {
        mode = "n";
        action = "live_grep";
        options = { desc = "[S]earch by [G]rep"; };
      };
      "<leader>sd" = {
        mode = "n";
        action = "diagnostics";
        options = { desc = "[S]earch [D]iagnostics"; };
      };
      "<leader>sr" = {
        mode = "n";
        action = "resume";
        options = { desc = "[S]earch [R]esume"; };
      };
      "<leader>s." = {
        mode = "n";
        action = "oldfiles";
        options = { desc = "[S]earch Recent Files ('.' for repeat)"; };
      };
      "<leader><leader>" = {
        mode = "n";
        action = "buffers";
        options = { desc = "[ ] Find existing buffers"; };
      };
    };
  };

  # Keymaps involving lua function actions
  keymaps = [
    {
      mode = "n";
      key = "<leader>/";
      action.__raw = builtins.readFile ./leader-slash.lua;
      options = { desc = "[/] Fuzzily search in current buffer"; };
    }
    {
      mode = "n";
      key = "<leader>s/";
      action.__raw = builtins.readFile ./leader-s-slash.lua;
      options = { desc = "[S]earch [/] in Open Files"; };
    }
    {
      mode = "n";
      key = "<leader>sn";
      action.__raw = builtins.readFile ./leader-s-n.lua;
      options = { desc = "[S]earch [N]eovim files"; };
    }
  ];
}