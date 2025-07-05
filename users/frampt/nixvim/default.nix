{inputs, ...}: {
  imports = [
    inputs.nixvim.homeManagerModules.nixvim
    ./keymaps
    ./lspconfig
    ./plugins
    ./autocmds.nix
    ./options.nix
  ];

  programs.nixvim = {
    enable = true;
    colorschemes.gruvbox.enable = true;
  };
}
