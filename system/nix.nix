{
  config,
  pkgs,
  ...
}: {
  # These are copied but I don't believe I need them...
  # nix = let
  #   flakeInputs = lib.filterAttrs (_: lib.isType "flake") inputs;
  # in {
  nix = {
    settings = {
      # Enable flakes and `nix` command
      experimental-features = ["nix-command" "flakes"];
      # Disable global registry?
      # flake-registry = "";
      nix-path = config.nix.nixPath;
    };

    # Disable channels
    # channel.enable = false;

    # Make flake registry + nix path match flakeInputs
    # registry = lib.mapAttrs (_: flake: {inherit flake;}) flakeInputs;
    # nixPath = lib.mapAttrsToList (n: _: "${n}=flake:${n}") flakeInputs;
  };

  # I believe flakes needs these to function
  environment.systemPackages = with pkgs; [
    wget
    git
  ];
}
