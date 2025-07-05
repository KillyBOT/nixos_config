{...}: {
  programs.nixvim = {
    autoGroups = {
      "lsp-attach" = {
        clear = true;
      };
    };
  };
}
