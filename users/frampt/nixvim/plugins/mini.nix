{...}: {
  # Mini contains a bunch of small plugins
  programs.nixvim.plugins = {
    mini-ai = {
      enable = true;
      settings.n_lines = 512;
    };

    mini-pairs = {
      enable = true;
      settings = {
        command = true;
        insert = true;
        terminal = false;
      };
    };

    mini-surround = {
      enable = true;
      settings.n_lines = 64;
    };
  };
}
