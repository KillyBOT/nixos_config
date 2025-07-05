{...}: {
  imports = [
    # Use whatever the generated config is here!
    ./hardware-configuration.nix
    ./packages.nix
  ];

  # Turn on FSTrim, since we use an SSD
  services.fstrim.enable = true;
}
