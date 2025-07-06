{...}: {
  programs.nixvim.plugins.flash = {
    enable = true;
    lazyLoad = {
      enable = true;
      settings.event = "VimEnter";
    };
  };
}
