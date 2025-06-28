# Things related to booting
{pkgs, ...}: {
  boot = {
    loader = {
      systemd-boot = {
        enable = true;
        configurationLimit = 16;
        editor = false;
      };
      efi.canTouchEfiVariables = true;
    };
    # Use the latest kernel
    kernelPackages = pkgs.linuxPackages_latest;
  };
}
