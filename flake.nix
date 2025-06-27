{
  description = "My NixOS config(s)";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-25.05";
    nixpkgs-unstable.url = "girhub:nixos/nixpkgs/nixos-unstable";
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
    ];

    forAllSystems = nixpkgs.lib.genAttrs systems;
  in {
    # Custom packages
    packages = forAllSystems (system: import ./pkgs nixpkgs.legacyPackages.${system});

    # Formatter
    formatter = forAllSystems (system: nixpkgs.legacyPackages.${system}.alejandra);

    # Custom packages/modifications, exported as overlays
    overlays = import ./overlays {inherit inputs;};

    # Exported modules
    nixosModules = import ./modules/nixos;
    homeManagerModules = import ./modules/home-manager;

    # NixOS configuration entrypoint
    # Accessed through `nixos-rebuild --flake .#hostname`
    # TODO: Add more hosts
    nixosConfigurations = {
      # T480s
      leyndell = nixpkgs.lib.nixosSystem {
        specialArgs = {inherit inputs outputs;};
        # The main configuration file
        modules = [./nixos/configuration.nix];
      };
    };

    # home-manager configuration entrypoint
    # Accessed through `home-manager --flake .#username@hostname`
    # TODO: Add more users
    homeConfigurations = {
      "frampt@leyndell" = home-manager.lib.homeManagerConfiguration {
        # home-manager needs a pkgs instance
        # TODO: Allow for different systems
        pkgs = nixpkgs.legacyPackages.x86_64-linux;
        extraSpecialArgs = {inherit inputs outputs;};
        modules = [./home-manager/home.nix];
      };
    };
  };
}
