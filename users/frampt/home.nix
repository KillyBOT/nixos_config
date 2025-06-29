{...}: {
  imports = [
    ./bat.nix
    ./git.nix
    ./htop.nix
    ./kitty.nix
    ./packages.nix
    ./systemd.nix
    ./tmux.nix
  ];

  # These packages need to be enabled!
  programs.home-manager.enable = true;
}
