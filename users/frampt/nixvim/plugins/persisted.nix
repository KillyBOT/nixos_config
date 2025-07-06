{...}: {
  programs.nixvim.plugins.persisted = {
    enable = true;

    settings = {
      use_git_branch = true;
    };
  };
}
