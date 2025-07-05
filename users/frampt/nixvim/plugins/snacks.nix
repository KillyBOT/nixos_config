{...}: {
  programs.nixvim = {
    plugins.snacks = {
      enable = true;

      autoLoad = true;

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
