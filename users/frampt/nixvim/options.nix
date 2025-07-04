{...}: {
  programs.nixvim = {
    globals = {
      # Space as leader
      mapleader = " ";
      maplocalleader = " ";

      # Nerd fonts are installed
      have_nerd_font = true;
    };

    # Wayland copy
    clipboard.providers.wl-copy.enable = true;

    opts = {
      # Relative numbers
      number = true;
      relativenumber = true;

      # Enable mouse mode
      mouse = "a";

      # Statusline already shows mode
      showmode = false;

      # Turn on break indents
      breakindent = true;

      # Save undo history
      undofile = true;

      # Use smart case for searching (no case unless \C or >1 capitals in search)
      ignorecase = true;
      smartcase = true;

      signcolumn = "yes";

      # Short update time
      updatetime = 200;
      # Display which-key sooner
      timeoutlen = 300;

      # Split right, then down?
      splitright = true;
      splitbelow = true;
      splitkeep = "screen";

      # Preview substitutions
      inccommand = "split";

      # Number of lines above and below the cursor
      scrolloff = 8;

      # Ask for confirmation
      confirm = true;

      # Highlight searches
      hlsearch = true;
    };
  };
}
