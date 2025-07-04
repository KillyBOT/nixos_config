{...}: {
  programs.nvf.settings.vim.lsp = {
    enable = true;
    formatOnSave = false;

    trouble.enable = true;

    lspconfig.sources.cmake = ''
      require'lspconfig'.cmake.setup{}
    '';
  };
}
