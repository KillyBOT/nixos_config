{...}: {
  programs.nvf.settings.vim = {
    # vi and vim are aliases to nvim
    viAlias = true;
    vimAlias = true;

    # These are the defaults, but still good to write out
    globals = {
      mapleader = " ";
      maplocalleader = " ";
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
      mouse = "a";

      # Windows/buffers
      splitright = true;
      splitbelow = true;
      # splitkeep

      # Visual
      cursorlineopt = "line";

      shiftwidth = 2;
      tabstop = shiftwidth;
      softtabstop = shiftwidth;

      tm = 250;
      updatetime = 100;

      # Disable word wrapping
      wrap = false;
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
