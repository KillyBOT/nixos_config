{
  inputs,
  outputs,
  lib,
  config,
  pkgs,
  ...
}: {
  imports = [
    # To use modules:

    # Using my own flake exports (from modules/home-manager)
    # outputs.homeManagerModules.whatever

    # Or modules from other flakes
    # inputs.nix-colors.homeManagerModules.default

    # Place other configs to import here:
  ];

  nixpkgs = {
    # Add overlays here
    overlays = [
      outputs.overlays.additions
      outputs.overlays.modifications
      outputs.overlays.unstable-packages

      # Same deal as in nixos/configuration.nix for overlays
    ];

    config = {
      allowUnfree = true;
    };
  };

  home = {
    username = "frampt";
    homeDirectory = "/home/frampt/";
  };

  # These packages need to be enabled!
  programs.home-manager.enable = true;
  programs.git.enable = true;

  # A useful tool that reloads system units when changing configs
  systemd.user.startServices = "sd-switch";

  # https://nixos.wiki/wiki/FAQ/When_do_I_update_stateVersion
  home.stateVersion = "25.05";
}
