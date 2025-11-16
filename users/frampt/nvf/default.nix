{inputs, ...}: {
  imports = [
    inputs.nvf.homeManagerModules.default
    ./options.nix
  ];

  programs.nvf = {
    enable = true;
  };
}
