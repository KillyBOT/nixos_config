{
  inputs,
  outputs,
  lib,
  config,
  pkgs,
  ...
}: {
  imports = [
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

  nix = let
    flakeInputs = lib.filterAttrs (_: lib.isType "flake") inputs;
  in {
    settings = {
      # Enable flakes and `nix` command
      experimental-features = "nix-command flakes";
      # Disable global registry?
      # flake-registry = "";
      nix-path = config.nix.nixPath;
    };

    # Disable channels
    channel.enable = false;

    # Make flake registry + nix path match flakeInputs
    # registry = lib.mapAttrs (_: flake: {inherit flake;}) flakeInputs;
    # nixPath = lib.mapAttrsToList (n: _: "${n}=flake:${n}") flakeInputs;
  };

  users.users = {
    frampt = {
      description = "frampt";
      isNormalUser = true;

      openssh.authorized.keys = [
        # Add public SSH keys here!
      ];

      extraGroups = ["networkmanager" "wheel"];
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

  # Enable Flakes
  # nix.settings.experimental-features = ["nix-command" "flakes"];
  # Flakes needs these to work
  environment.systemPackages = with pkgs; [
    git
    vim
    neovim
    wget
  ];

  environment.variables.EDITOR = "nvim";

  system.stateVersion = "25.05";
}
