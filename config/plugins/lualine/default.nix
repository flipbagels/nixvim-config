{
  plugins.lualine = {
    enable = true;
    settings = {
      sections = {
        lualine_a = ["mode"];
        lualine_b = ["branch" "diff" "diagnostics"];
        lualine_c = [
          {
            __unkeyed-1 = "filename";
            path = 1;
          }
        ];
        lualine_x = ["encoding" "fileformat" "filetype"];
        lualine_y = ["progress"];
        lualine_z = ["location"];
      };
    };
  };
}
