{
  programs.hyprlock = {
    enable = true;
    settings = {
      general = {
        disable_loading_bar = true;
        hide_cursor = true;
        no_fade_in = false;
      };

      label = {
        text = "$TIME";
        font_size = 96;
        font_family = "Noto Mono";
        position = "0,600";
        halign = "center";
        valign = "center";

        shadow_passes = 1;
      };

      backgroud = [
        {
          path = "screenshot";
          blur_passes = 3;
          blur_size = 8;
        }
      ];

      # input-field = [
      #   {
      #     size = "200, 50";
      #     position = "0, -80";
      #     monitor = "";
      #     dots_center = true;
      #
      #     outline_thickness = 5;
      #     shadow_passes = 1;
      #   }
      # ];
    };
  };
}
