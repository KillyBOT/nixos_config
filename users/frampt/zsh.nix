{config, ...}: {
  programs.zsh = {
    enable = true;
    enableCompletion = true;
    autosuggestion.enable = true;
    syntaxHighlighting.enable = true;

    shellAliases = {
      ll = "ls -alF";
    };

    history.size = 16384;
    history.path = "${config.xdg.dataHome}/zsh/history";

    # Start tmux and uwsm if they are not already running
    initExtra = ''
      if [ -z "$TMUX" ] && [ -n "$DISPLAY" ]; then
        tmux attach-session -t default || tmux new-session -s default
      fi

      if uwsm check may-start > /dev/null && uwsm select; then
        exec systemd-cat -t uwsm_start uwsm start default
      fi
    '';
  };
}
