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

    history.size = 65536;
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

    initContent = let
      initExtra = lib.mkOrder 1000 ''
        source ~/.p10k.zsh
      '';
    in
      lib.mkMerge [initExtra];
  };
}
