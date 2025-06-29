{
  # inputs,
  outputs,
  # lib,
  # config,
  # pkgs,
  ...
}: {
  imports = [
    # Use whatever the generated config is here!
    ./hardware-configuration.nix
    ./packages.nix
  ];
}
