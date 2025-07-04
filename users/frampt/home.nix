{outputs, ...}: {
  imports = [
    ./hyprland
    ./waybar
    ./rofi
    ./bat.nix
    ./git.nix
    ./htop.nix
    ./kitty.nix
    ./lazygit.nix
    ./librewolf.nix
    ./neovim.nix
    ./packages.nix
    ./qt.nix
    ./starship.nix
    ./stylix.nix
    ./systemd.nix
    ./tmux.nix
    ./zsh.nix
  ];

  nixpkgs = {
    # You can add overlays here
    overlays = [
      # Add overlays your own flake exports (from overlays and pkgs dir):
      outputs.overlays.additions
      outputs.overlays.modifications
      outputs.overlays.unstable-packages

      # You can also add overlays exported from other flakes:
      # neovim-nightly-overlay.overlays.default

      # Or define it inline, for example:
      # (final: prev: {
      #   hi = final.hello.overrideAttrs (oldAttrs: {
      #     patches = [ ./change-hello-to-hi.patch ];
      #   });
      # })
    ];
    # Configure your nixpkgs instance
    config = {
      # Disable if you don't want unfree packages
      allowUnfree = true;
    };
  };
}
