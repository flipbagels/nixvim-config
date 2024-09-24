{
  opts = {
    # Line numbers
    number = true;
    relativenumber = true;

    # Number of spaces that represent a <TAB>
    tabstop = 2;
    softtabstop = 2;
    shiftwidth = 2;

    # Spaces instead of tabs
    expandtab = true;

    # Enable mouse support
    mouse = "a";

    # Don't show since already in status line
    showmode = false;

    # Enable break indent
    breakindent = true;

    # Save undo history
    undofile = true;

    # Case-insensitive searching unless \C or one or more capital letters in the search term
    ignorecase = true;
    smartcase = true;

    # Keep signcolumn on by default
    signcolumn = "yes";

    # Decrease update time to swap file
    updatetime = 250;

    # Decrease mapped sequence wait time (whick-keys displayed sooner)
    timeoutlen = 500;

    # Configure how new splits should be opened
    splitright = true;
    splitbelow = true;

    # Configures whitespace characters
    list = true;
    listchars = {
      trail = "·";
      nbsp = "␣";
    };

    # Preview substitutions in split view
    inccommand = "split";

    # Enable cursor line
    cursorline = true;

    # Minimal number of screen lines to keep above and below cursor
    scrolloff = 10;
  };

  extraConfigLua = builtins.readFile ./extra.lua;
}
