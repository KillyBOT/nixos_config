{...}: {
  programs.nvf.settings.vim = {
    viAlias = true; # vi is alias for nvim
    vimAlias = true; # vim is alias for nvim

    globals = {
      mapleader = " ";
      maplocalleader = " ";
    };

    clipboard = {
      enable = true;
      providers.wl-copy.enable = true;
      registers = "unnamedplus";
    };

    searchCase = "smart";

    undoFile.enable = true;
    preventJunkFiles = true;

    options = rec {
      # [[ General ]]
      mouse = "a";
      number = true;
      relativenumber = true;

      cursorlineopt = "both";

      # [[ Indentation ]]
      shiftwidth = 2;
      tabstop = shiftwidth;
      softtabstop = shiftwidth;
      showtabline = shiftwidth;
      expandtab = true;
      smartindent = true;
      breakindent = true;

      wrap = false;
    };
    lineNumberMode = "relNumber";
  };
}
