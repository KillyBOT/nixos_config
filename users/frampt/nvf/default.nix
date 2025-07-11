{inputs, ...}: {
  imports = [
    inputs.nvf.homeManagerModules.default
    ./options.nix
  ];

  programs.nvf = {
    enable = true;
    settings.vim.theme = {
      enable = true;
      name = "gruvbox";
      style = "dark";
    };
  };
}
