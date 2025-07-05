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

    opts = rec {
      # [[ General ]]
      mouse = "a"; # Enable mouse mode
      completeopt = "menu,menuone,noselect"; # Dunno what this does
      confirm = true; # Ask for confirmation

      # [[ Windows/Buffers ]]
      splitright = true; # Split only right...
      splitbelow = true; # ...or down
      splitkeep = "screen";

      # [[ Search ]]
      hlsearch = true; # Highlight searches
      inccommand = "nosplit"; # Show substitutions visually
      grepprg = "rg --vimgrep"; # Use ripgrep
      grepformat = "%f:%l:%c:%m";

      ignorecase = true; # Don't use case
      smartcase = true; # Only use case if >1 capitals or \C

      # Short update time
      updatetime = 200;
      # Display which-key sooner
      timeoutlen = 300;

      # [[ Visual ]]
      number = true; # Show numbers
      relativenumber = true; # Show relative numbers
      list = true; # Show invisible characters:
      listchars.__raw = "{tab = '» ', trail = '·', nbsp = '␣' }";
      cursorline = true; # Show current cursor line
      signcolumn = "yes"; # Show signcolumn
      scrolloff = 8; # Number of lines above/below cursor
      termguicolors = true; # Truecolor support
      showmode = false; # Statusline already shows mode
      ruler = false; # Disable the ruler

      linebreak = true; # Idk what this does
      wrap = false; # Disable line wrapping by default
      conceallevel = 2; # Hide * markup for bold and italics, but not markers with substitutions

      # [[ Indentation ]]
      expandtab = true; # Spaces over tabs!
      smartindent = true; # Auto-indent
      shiftround = true; # Round indents
      shiftwidth = 2; # 2 spaces per tab
      tabstop = shiftwidth; # Spaces per tab visually
      softtabstop = shiftwidth; # Spaces per tab editing
      breakindent = true; # Use break indents

      # [[ Editing ]]
      undofile = true; # Save undo history
      undolevels = 16384; # Undo levels
    };
  };
}
