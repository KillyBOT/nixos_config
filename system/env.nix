{
  environment.sessionVariables = rec {
    # Use NeoVim by default
    EDITOR = "nvim";

    # Set up XDG
    XDG_BIN_HOME = "$HOME/.local/bin";
    PATH = [
      "${XDG_BIN_HOME}"
    ];
  };
}
