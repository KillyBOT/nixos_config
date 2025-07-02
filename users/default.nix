{
  nixpkgs,
  home-manager,
  self,
  ...
}: let
  inherit (self) inputs outputs;

  users = [
    {
      username = "frampt";
      # TODO: See if there's a better way to define this
      system = "x86_64-linux";
      stateVersion = "25.05";
    }
  ];

  mkUser = {
    username,
    system,
    stateVersion,
  }:
    home-manager.lib.homeManagerConfiguration {
      pkgs = nixpkgs.legacyPackages.${system};
      extraSpecialArgs = {inherit inputs outputs username;};
      modules = [
        {
          home.username = username;
          home.homeDirectory = "/home/${username}";
          home.stateVersion = stateVersion;
        }
        ./${username}/home.nix
      ];
    };
in
  nixpkgs.lib.foldl' (configs: user:
    configs
    // {
      "${user.username}" = mkUser {
        inherit (user) username system stateVersion;
      };
    }) {}
  users
