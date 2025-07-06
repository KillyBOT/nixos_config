{...}: {
  programs.nixvim.plugins = {
    web-devicons.enable = true;

    bufferline = {
      enable = true;
      lazyLoad.settings.lazy = false;
    };
  };
}
