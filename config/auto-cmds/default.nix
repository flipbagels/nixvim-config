{
  autoGroups = {
    highlight-yank = { clear = true; };
  };

  autoCmd = [
    {
      group = "highlight-yank";
      event = "TextYankPost";
      pattern = "*";
      callback = {
        __raw = ''
          function()
            vim.highlight.on_yank()
          end
        '';
      };
    }
  ];
}