{...}: {
  imports = [
    # Use whatever the generated config is here!
    ./hardware-configuration.nix
    ./packages.nix
  ];

  # Turn on FSTrim, since we use an SSD
  services.fstrim.enable = true;

  # Use TLP
  services.tlp = {
    enable = true;
    settings = {
      START_CHARGE_THRESH_BAT0 = 70;
      STOP_CHARGE_THRESH_BAT0 = 80;
    };
  };
}
