{pkgs, ...}: {
  environment.systemPackages = with pkgs; [
    vim
    lm_sensors
  ];
}
