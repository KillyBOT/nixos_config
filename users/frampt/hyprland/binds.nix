{pkgs, ...}: {
  wayland.windowManager.hyprland.settings = {
    bind = [
      "$mainMod SHIFT, Return, exec, $terminal"
      "$mainMod SHIFT, C, killactive,"
      "$mainMod SHIFT, Q, exit,"
    ];
  };
}
