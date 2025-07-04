{...}: {
  programs.hyprland = {
    enable = true;
    withUWSM = true;
    # Turn on XWayland
    xwayland.enable = true;
  };

  hardware.graphics.enable = true;

  security.pam.services.hyprlock = {};
}
