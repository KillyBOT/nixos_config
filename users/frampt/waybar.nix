{...}: {
  programs.waybar = {
    enable = true;

    settings = {
      mainBar = {
        layer = "top";
        position = "top";
        height = 30;

        modules-left = ["tray" "hyprland/workspaces"];
        modules-center = ["hyprland/window"];
        modules-right = ["idle_inhibitor" "cpu_text" "cpu" "memory" "pulseaudio" "network" "battery" "clock"];

        "idle_inhibitor" = {
          format = "{icon}";
          format-icons = {
            "activated" = "";
            "deactivated" = "";
          };
        };

        "cpu" = {
          interval = 10;
          format = " {}%";
          max-length = 10;
        };
        "memory" = {
          interval = 10;
          format = " {}%";

          tooltip = true;
          tooltip-format = "{used:0.1f}G/{total:0.1f}G used";
          max-length = 10;
        };

        "pulseaudio" = {
          format = "{icon} {volume}%";
          format-bluetooth = "{icon} {volume}% ";
          format-muted = "";

          scroll-step = 5;
          max-volume = 100;

          format-icons = {
            "headphones" = "";
            "default" = ["" ""];
          };

          on-click = "pavucontrol";
        };

        "network" = {
          format = "{ifname}";
          format-wifi = "{essid}";
          format-ethernet = "{ifname}";
          format-disconnected = "";

          tooltip-format = "{ifname} via {gwaddr}";
          tooltip-format-wifi = "{essid} ({signalStrength}%)";
          tooltip-format-ethernet = "{ifname} via {gwaddr}";
          tooltip-format-disconnected = "No network";
        };

        "battery" = {
          states = {
            warning = 20;
            critical = 5;
          };
          format = "{icon} {capacity}%";
          format-charging = " {capacity}%";
          format-alt = "{time} {power:0.2f}W";
          format-alt-charging = "{power:0.2f}W";
          format-icons = ["" "" "" "" ""];
        };

        "clock" = {
          format = "{:%H:%M}";
          format-alt = "{:%A, %B %d, %Y (%R)}";
          tooltip-format = "<tt><small>{calendar}</small></tt>";
        };

        "tray" = {
          icon-size = 14;
          spacing = 1;
        };
      };
    };
  };
}
