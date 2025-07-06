{
  # Highlight todos, notes, etc.
  programs.nixvim.plugins.todo-comments = {
    enable = true;

    lazyLoad.settings = {
      event = "VimEnter";
    };

    settings.signs = true;
  };
}
