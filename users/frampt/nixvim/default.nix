{
  inputs,
  pkgs,
  ...
}: {
  imports = [
    inputs.nixvim.homeManagerModules.nixvim
    ./plugins
    ./options.nix
  ];

  programs.nixvim = {
    enable = true;
    colorschemes.gruvbox.enable = true;
  };
}
