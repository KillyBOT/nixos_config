{...}: {
  programs.nixvim.plugins.conform-nvim = {
    lazyLoad.settings = {
      cmd = "ConformInfo";
    };
  };
}
