# Great CLI for git
{
  programs.lazygit = {
    enable = true;
    settings = {
      gui.showIcons = true;
      gui.theme = {
        lightTheme = false;
        # TODO: Pick a good theme here
      };
    };
  };
}
