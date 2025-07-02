{
  inputs,
  pkgs,
  ...
}: {
  imports = [inputs.home-manager.nixosModules.default];
  environment.systemPackages = [inputs.home-manager.packages.${pkgs.system}.default];

  # Enable file backup
  home-manager.backupFileExtension = "backup";
}
