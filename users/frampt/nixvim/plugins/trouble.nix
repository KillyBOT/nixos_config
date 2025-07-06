{...}: {
  programs.nixvim.plugins.trouble = {
    lazyLoad.settings = {
      cmd = "Trouble";
    };
  };
}
