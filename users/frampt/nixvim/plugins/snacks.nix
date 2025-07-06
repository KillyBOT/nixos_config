{...}: {
  programs.nixvim = {
    plugins.snacks = {
      enable = true;
      autoLoad = true;

      lazyLoad.settings = {
        lazy = false; # Do not lazy load!
        priority = 1000; # Load before everything else
      };

      settings = {
        bigfile.enabled = true;
        notifier = {
          enabled = true;
          timeout = 3000;
        };
        quickfile.enabled = true;
        statuscolumn.enabled = true;
        words.enabled = true;
      };
    };

    extraConfigLua = ''
      vim.g.snacks_animate = false
    '';
  };
}
