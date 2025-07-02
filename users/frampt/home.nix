{...}: {
  imports = [
    # ./hyprland
    ./bat.nix
    ./git.nix
    ./htop.nix
    ./kde.nix
    ./kitty.nix
    ./lazygit.nix
    ./neovim.nix
    ./packages.nix
    ./qt.nix
    ./stylix.nix
    ./systemd.nix
    ./tmux.nix
  ];

  # These packages need to be enabled!
  programs.home-manager.enable = true;
}
