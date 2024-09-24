{
  autoGroups = {
    highlight-yank = {clear = true;};
  };

  autoCmd = [
    {
      group = "highlight-yank";
      event = "TextYankPost";
      pattern = "*";
      callback.__raw = builtins.readFile ./TextYankPost.lua;
    }
  ];
}
