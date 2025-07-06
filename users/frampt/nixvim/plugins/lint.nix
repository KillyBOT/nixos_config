{...}: {
  programs.nixvim.plugins.lint = {
    lazyLoad.settings = {
      event = ["BufReadPre" "BufNewFile"];
    };
  };
}
