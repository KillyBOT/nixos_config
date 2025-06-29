{
  description = "My NixOS config(s)";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-25.05";
    nixpkgs-unstable.url = "github:nixos/nixpkgs/nixos-unstable";

    home-manager = {
      url = "github:nix-community/home-manager/release-25.05";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = {
    self,
    nixpkgs,
    home-manager,
    ...
  } @ inputs: let
    inherit (self) outputs;
    # Supported systems, more will come later
    systems = [
      "x86_64-linux"
      "aarch64-linux"
    ];

    forAllSystems = nixpkgs.lib.genAttrs systems;
  in {
    # # Custom packages
    packages = forAllSystems (
      system: import ./pkgs nixpkgs.legacyPackages.${system}
    );

    # Formatter
    formatter = forAllSystems (
      system: let
        pkgs = nixpkgs.legacyPackages.${system};
      in
        pkgs.alejandra
    );

    # Custom packages/modifications, exported as overlays
    overlays = import ./overlays {inherit inputs;};

    # Exported modules
    nixosModules = import ./modules/nixos;
    homeManagerModules = import ./modules/home-manager;

    # NixOS configuration entrypoint
    # Accessed through `nixos-rebuild --flake .#hostname`
    nixosConfigurations = import ./hosts inputs;

    # home-manager configuration entrypoint
    # Accessed through `home-manager --flake .#username`
    # For some reason, my default.nix is not working, so I have to do this manually.
    # TODO: Fix users/default.nix, and uncomment the following:
    # homeConfigurations = import ./users inputs;
    homeConfigurations = {
      "frampt" = home-manager.lib.homeManagerConfiguration {
        # home-manager needs a pkgs instance
        # TODO: Allow for different systems
        pkgs = nixpkgs.legacyPackages.x86_64-linux;
        extraSpecialArgs = {inherit inputs outputs;};
        modules = [
          {
            home.username = "frampt";
            home.homeDirectory = "/home/frampt";
            home.stateVersion = "25.05";
          }
          ./users/frampt/home.nix
        ];
      };
    };

    # nixpkgs settings
    # nixpkgs = {
    #   overlays = [
    #     outputs.overlays.additions
    #     outputs.overlays.modifications
    #     outputs.overlays.unstable-packages
    #   ];
    #
    #   # Configure nixpkgs
    #   config = {
    #     allowUnfree = true;
    #   };
    # };
  };
}
