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
    }
  ];

  mkHost = {
    hostname,
    system,
    stateVersion,
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
        ./${hostname}/configuration.nix

        # Also use the system module
        ../system
      ];
      specialArgs = {
        inherit inputs outputs;
      };
    };
in
  # Add
  nixpkgs.lib.foldl' (configs: host:
    configs
    // {
      "${host.hostname}" = mkHost {
        inherit (host) hostname system stateVersion;
      };
    }) {}
  hosts
