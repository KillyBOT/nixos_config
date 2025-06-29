{
  # inputs,
  outputs,
  # lib,
  # config,
  # pkgs,
  ...
}: {
  imports = [
    # Use whatever the generated config is here!
    ./hardware-configuration.nix
    ./packages.nix
  ];

  # nixpkgs settings
  nixpkgs = {
    overlays = [
      outputs.overlays.additions
      outputs.overlays.modifications
      outputs.overlays.unstable-packages
    ];

    # Configure nixpkgs
    config = {
      allowUnfree = true;
    };
  };
}
