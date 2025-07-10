{
  config,
  pkgs,
  lib,
  ...
}: {
  programs.zsh = {
    enable = true;
    enableCompletion = true;
    autosuggestion.enable = true;
    syntaxHighlighting.enable = true;

    shellAliases = {
      ll = "ls -alF";
      # TODO: Add more bindings
    };

    history.size = 16384;
    history.path = "${config.xdg.dataHome}/zsh/history";

    oh-my-zsh = {
      enable = true;
      plugins = ["git" "sudo"];
    };

    # Some plugins I have to add manually
    plugins = [
      {
        name = "powerlevel10k";
        src = pkgs.zsh-powerlevel10k;
        file = "share/zsh-powerlevel10k/powerlevel10k.zsh-theme";
      }
      # {
      #   name = "powerlevel10k-config";
      #   src = ~/.;
      #   file = ".p10k.zsh";
      # }
    ];

    # Start tmux and uwsm if they are not already running
    # UWSM is just to start Hyprland immediately
    initContent = let
      initExtraFirst = lib.mkOrder 500 ''
        source ~/.p10k.zsh
      '';
      initExtra = lib.mkOrder 1000 ''
        if [ -z "$TMUX" ] && [ -n "$DISPLAY" ]; then
          tmux attach-session -t default || tmux new-session -s default
        fi

        if uwsm check may-start > /dev/null && uwsm select; then
          exec systemd-cat -t uwsm_start uwsm start default
        fi
      '';
    in
      lib.mkMerge [initExtraFirst initExtra];
  };
}
