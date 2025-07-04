{pkgs, ...}: let
  tuigreet = "${pkgs.greetd.tuigreet}/bin/tuigreet";
  hyprland_session = "${pkgs.hyprland}/share/wayland-sessions";
in {
  services.greetd = {
    enable = true;
    settings = rec {
      initial_session = {
        command = "${tuigreet} --time --remember --remember-session --sessions ${hyprland_session}";
        user = "frampt";
      };
      default_session = initial_session;
    };
  };

  # Got this from https://github.com/sjcobb2022/nixos-config/blob/main/hosts/common/optional/greetd.nix
  # Not sure if it's what I want
  systemd.services.greetd.serviceConfig = {
    Type = "idle";
    StandardInput = "tty";
    StandardOutput = "tty";
    StandardError = "journal"; # Without this errors will spam on screen
    # Without these bootlogs will spam on screen
    TTYReset = true;
    TTYVHangup = true;
    TTYVTDisallocate = true;
  };
}
