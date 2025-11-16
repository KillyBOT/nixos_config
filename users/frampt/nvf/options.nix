{...}: {
  programs.nvf.settings.vim = {
    # vi and vim are aliases to nvim
    viAlias = true;
    vimAlias = true;

    # These are the defaults, but still good to write out
    globals = {
      mapleader = " "; # Space is the perfect leader
      maplocalleader = " ";
      have_nerd_font = true;
      autoformat = false; # Autoformat is annoying
      snacks_animate = false; # Not sure why this is a global setting
      markdown_recommend_style = 0; # Fixes something (I don't remember what this does)
    };

    # Smart search case (opt.smartcase I think?)
    searchCase = "smart";

    # Undo file
    undoFile.enable = true;
    # No swap or backup files
    preventJunkFiles = true;

    # opt.number + opt.relativenumber
    lineNumberMode = "relNumber";

    # Clipboard
    clipboard = {
      enable = true;
      # Use wl-copy
      providers.wl-copy.enable = true;
      # Use the clipboard register for copy-paste
      registers = "unnamed";
    };

    options = rec {
      # General
      mouse = "a"; # Enable the mouse
      completeopt = "menu,menuone,noselect"; # Completion options

      # Search
      inccommand = "nosplit"; # Show substitutions live
      grepprg = "rg --vimgrep"; # Use ripgrep
      grepformat = "%f:%l:%c:%m"; # Use this format with ripgrep
      ignorecase = true; # Ignore case when searching
      smartcase = true; # But sometimes don't ignore it!
      updatetime = 100; # Time to wait until CursorHold event is fired (ms)
      tm = 250; # Timeout to wait for an action to complete (ms)

      # Windows/buffers
      splitright = true; # Prefer splitting right
      splitbelow = true; # Prefer splitting down
      splitkeep = "screen";

      # Visual
      number = true; # Show line numbers
      relativenumber = true; # Make them relative
      list = true; # Show invisible characters
      # listchars.tab = "» ";
      # listchars.trail = "·";
      # listchars.nbsp = "␣";
      cursorline = true; # Highlight the current line
      cursorlineopt = "both"; # Highlight both the line and the number
      scrolloff = 8; # Minimum lines above/below the cursor
      termguicolors = true; # Enable true color support
      showmode = false; # No need to show the current mode
      ruler = false; # No need to show the ruler either
      linebreak = true; # Better line breaks
      wrap = false; # Disable word wrapping

      # Indentation
      expandtab = true; # Who tf uses tabs
      smartindent = true; # Auto-indentation
      shiftround = true; # Round indents
      tabstop = 2; # Two spaces per tab
      softtabstop = tabstop; # Number of spaces to go when you hit tab
      shiftwidth = tabstop; # One tab per shift
      breakindent = true; # For wrapped lines, keep their indentation

      # Editing
      undofile = true; # Save undos
      undolevels = 16384; # 2**14 undo levels
    };

    visuals = {
      nvim-cursorline = {
        enable = true;
        setupOpts = {
          cursorline = {
            enable = true;
            timeout = 0;
          };
        };
      };
    };
  };
}
