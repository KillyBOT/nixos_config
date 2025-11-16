{pkgs, ...}: let
  tmux-which-key =
    pkgs.tmuxPlugins.mkTmuxPlugin
    {
      pluginName = "tmux-which-key";
      version = "unstable-2023-01-06";
      src = pkgs.fetchFromGitHub {
        owner = "alexwforsythe";
        repo = "tmux-which-key";
        rev = "1f419775caf136a60aac8e3a269b51ad10b51eb6";
        sha256 = "sha256-X7FunHrAexDgAlZfN+JOUJvXFZeyVj9yu6WRnxMEA8E=";
      };
    };
in {
  programs.tmux = {
    enable = true;
    shell = "${pkgs.zsh}/bin/zsh";
    prefix = "C-space";

    mouse = true;
    escapeTime = 0;
    clock24 = true;
    keyMode = "vi";
    terminal = "tmux-256color";
    historyLimit = 65536;
    plugins = with pkgs; [
      {
        plugin = tmuxPlugins.resurrect;
        extraConfig = ''
          set -g @resurrect-strategy-vim 'session'
          set -g @resurrect-strategy-nvim 'session'
        '';
      }
      {
        plugin = tmuxPlugins.continuum;
        extraConfig = ''
          set -g @continuum-restore 'on'
        '';
      }
      tmuxPlugins.yank
      tmuxPlugins.prefix-highlight
      tmuxPlugins.pain-control
      {
        plugin = tmux-which-key;
      }
      tmuxPlugins.copycat
      tmuxPlugins.open
      {
        plugin = tmuxPlugins.gruvbox;
        extraConfig = ''
          set -g @tmux-gruvbox 'dark256'
          set -g @tmux-gruvbox-right-status-x '%Y-%m-%d'
          set -g @tmux-gruvbox-right-status-z '#h #{tmux_mode_indicator}'
        '';
      }
    ];
  };
}
