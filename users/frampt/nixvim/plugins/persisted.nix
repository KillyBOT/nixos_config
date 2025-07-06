{...}: {
  programs.nixvim.plugins.persisted = {
    enable = true;

    lazyLoad.settings = {
      event = "BufReadPre";
    };

    settings = {
      use_git_branch = true;
    };
  };
}
