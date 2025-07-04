{...}: {
  programs.nvf.settings.vim = {
    viAlias = true;
    vimAlias = true;

    searchCase = "smart";

    preventJunkFiles = true;

    undoFile.enable = true;

    options = rec {
      cursorlineopt = "both";
      shiftwidth = 2;
      tabwidth = shiftwidth;
      softtabstop = shiftwidth;
    };
    lineNumberMode = "relNumber";
  };
}
