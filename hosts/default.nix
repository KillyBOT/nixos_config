{
  nixpkgs,
  self,
  ...
}: let
  inherit (self) inputs outputs;

  hosts = [
    {
      hostname = "newlondo";
      system = "x86_64-linux";
      stateVersion = "25.05";
      # TODO: Support multiple users
      username = "frampt";
    }
  ];

  mkHost = {
    hostname,
    system,
    stateVersion,
    username,
  }:
    nixpkgs.lib.nixosSystem {
      system = system;
      modules = [
        # Specify these values so we don't have to do it there
        {
          networking.hostName = hostname;
          nixpkgs.hostPlatform = system;
          system.stateVersion = stateVersion;
        }
        # Add the host's configuration
        ./${hostname}/configuration.nix

        # Also use the system module
        ../system

        # home-manager.nixosModules.home-manager
        # {
        #   home-manager = {
        #     useGlobalPkgs = true;
        #     useUserPackages = true;
        #
        #     users.${username} = import ../users/${username}/home.nix;
        #
        #     extraSpecialArgs = {inherit inputs outputs;};
        #   };
        # }

        # nixpkgs.lib.genAttrs users (
        #   user:
        #     home-manager.nixosModules.home-manager {
        #       home-manager.useGlobalPkgs = true;
        #       home-manager.userUserPackages = true;
        #
        #       home-manager.users.${user} = import ../users/${user}/home.nix
        #     };
        # )
      ];
      specialArgs = {
        inherit inputs outputs;
      };
    };
in
  nixpkgs.lib.foldl' (configs: host:
    configs
    // {
      "${host.hostname}" = mkHost {
        inherit (host) hostname system stateVersion username;
      };
    }) {}
  hosts
