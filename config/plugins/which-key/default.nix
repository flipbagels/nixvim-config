{
  plugins.which-key = {
    enable = true;
    settings = {
      spec = [
        {
          __unkeyed-1 = "<leader>c";
          group = "[C]ode";
          mode = ["n" "v"];
        }
        {
          __unkeyed-1 = "<leader>d";
          group = "[D]ocument";
        }
        {
          __unkeyed-1 = "<leader>r";
          group = "[R]ename";
        }
        {
          __unkeyed-1 = "<leader>s";
          group = "[S]earch";
        }
        {
          __unkeyed-1 = "<leader>w";
          group = "[W]orkspace";
        }
        {
          __unkeyed-1 = "<leader>t";
          group = "[T]oggle";
        }
        {
          __unkeyed-1 = "<leader>h";
          group = "[H]arpoon";
        }
        {
          __unkeyed-1 = "<leader>H";
          group = "Git [H]unk";
          mode = ["n" "v"];
        }
      ];
    };
  };
}

