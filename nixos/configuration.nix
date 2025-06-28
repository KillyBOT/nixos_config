{
  inputs,
  outputs,
  lib,
  config,
  pkgs,
  ...
}: {
  imports = [
    ./audio
    ./boot
    ./net
    ./nix
    ./users
    ./wayland
    # Use whatever the generated config is here!
    ./hardware-configuration.nix
  ];

  nixpkgs = {
    # Add overlays here
    overlays = [
      outputs.overlays.additions
      outputs.overlays.modifications
      outputs.overlays.unstable-packages
    ];

    # Overlays could also be added from other flakes:
    # neovim-nigtly-lover.overlays.default

    # Or can be defined inline

    # Configure nixpkgs
    config = {
      allowUnfree = true;
    };
  };

  services.openssh = {
    enable = true;
    settings = {
      X11Forwarding = false;
      PermitRootLogin = "no";
      PasswordAuthentication = false;
    };
    openFirewall = true;
  };

  # Get some global editors...
  environment.systemPackages = with pkgs; [
    vim
    neovim # I may move this to user instead
  ];
  # Set NeoVim as the default editor
  environment.variables.EDITOR = "nvim";

  # Default time zone
  time.timeZone = "America/New_York";

  # Enable CUPS for printing documents
  services.printing.enable = true;

  system.stateVersion = "25.05";
}
