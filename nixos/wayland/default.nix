# I like KDE, but you can choose whatever
{pkgs, ...}: {
  services = {
    # We'll handle this here as well
    xserver = {
      enable = true;
      xkb = {
        layout = "us";
        variant = "";
      };
    };

    # SDDM
    displayManager.sddm = {
      enable = true;
      wayland.enable = true;
    };

    # Plasma 6
    desktopManager.plasma6.enable = true;
  };
}
