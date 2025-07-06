{...}: {
  programs.nixvim.plugins.inc-rename = {
    enable = true;
    lazyLoad.settings = {
      cmd = "IncRename";
    };
  };
}
