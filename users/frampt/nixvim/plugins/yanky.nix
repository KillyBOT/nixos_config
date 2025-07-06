{...}: {
  programs.nixvim.plugins.yanky = {
    enable = true;
    # lazyLoad = {
    #   enable = true;
    #   settings.cmd = ["YankyClearHistory" "YankyRingHistory"];
    # };

    settings = {
      highlight = {
        on_put = true;
        on_yank = true;
        timer = 100;
      };
      preserve_cursor_position.enabled = true;
    };
  };
}
