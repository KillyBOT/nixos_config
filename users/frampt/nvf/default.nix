{inputs, ...}: {
  imports = [
    inputs.nvf.homeManagerModules.default
    ./settings.nix
    ./keymaps.nix
    ./plugins
  ];

  programs.nvf.enable = true;
}
