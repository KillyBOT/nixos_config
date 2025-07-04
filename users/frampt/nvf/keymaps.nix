{...}: {
  programs.nvf.settings.vim = {
    # Commenting
    comments.comment-nvim.mappings = {
      toggleCurrentBlock = "gbc";
      toggleCurrentLine = "gcc";
    };

    # Moving between tabs
    tabline.nvimBufferline.mappings = {
      cycleNext = "<S-l>";
      cyclePrevious = "<S-h>";
    };

    # Which! Technically this is a plugin, but it makes more sense to put it here
    binds.whichKey = {
      enable = true;
    };
  };
}
