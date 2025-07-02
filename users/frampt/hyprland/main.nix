# Main configuration file
{
  wayland.windowManager.hyprland = {
    enable = true;

    # package = null;
    # portalPackage = null;

    systemd = {
      enable = true;
      variables = ["--all"];
    };

    settings = {
      env = [
        # Hint Electron apps to use Wayland
        "NIXOS_OZONE_WL,1"
        "XDG_CURRENT_DESKTOP,Hyprland"
        "XDG_SESSION_TYPE,wayland"
        "XDG_SESSION_DESKTOP,Hyprland"
        "QT_QPA_PLATFORM,wayland"
        "XDG_SCREENSHOTS_DIR,$HOME/screens"
      ];

      exec-once = [
        "waybar"
        "wl-paste --type text --watch cliphist store"
        "wl-paste --type image --watch cliphist store"
      ];

      monitor = ",1920x1080@60,auto,1";
      "$mainMod" = "SUPER";
      "$terminal" = "kitty";
      "$menu" = "wofi";

      general = {
        allow_tearing = false;
        layout = "master";
      };

      animations.enabled = false;

      input = {
        kb_layout = "us";
        kb_options = "ctrl:swapcaps";
      };
    };
  };
}
