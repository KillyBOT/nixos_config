{outputs, ...}: {
  imports = [
    ./audio.nix
    ./bluetooth.nix
    ./boot.nix
    ./env.nix
    ./home-manager.nix
    ./hyprland.nix
    ./i18n.nix
    # ./kde.nix
    ./kernel.nix
    # ./ly.nix
    ./net.nix
    ./nix.nix
    ./printing.nix
    ./timezone.nix
    ./users.nix
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
