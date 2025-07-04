{...}: {
  # Mini contains a bunch of small plugins
  programs.nixvim.plugins = {
    mini-ai = {
      enable = true;
      lazyLoad = {
        enable = true;
      };
    };
  };
}
