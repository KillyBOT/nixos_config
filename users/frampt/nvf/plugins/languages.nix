{...}: {
  programs.nvf.settings.vim.languages = {
    enableDAP = true;
    enableExtraDiagnostics = true;
    enableFormat = true;
    enableTreesitter = true;

    bash.enable = true;
    rust.enable = true;
    nix.enable = true;
    clang = {
      enable = true;
      lsp.package = ["clangd"];
    };
    lua.enable = true;

    markdown.enable = true;
    html.enable = true;
  };
}
