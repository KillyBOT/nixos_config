{...}: {
  programs.nvf.settings.vim = {
    viAlias = true;
    vimAlias = true;

    searchCase = "smart";

    undoFile.enable = true;
    preventJunkFiles = true;

    options = rec {
      cursorlineopt = "both";
      shiftwidth = 2;
      tabstop = shiftwidth;
      softtabstop = shiftwidth;
    };
    lineNumberMode = "relNumber";
  };
}
