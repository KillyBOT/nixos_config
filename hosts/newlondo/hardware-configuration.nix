# {
#   config,
#   lib,
#   pkgs,
#   modulesPath,
#   ...
# }: {
#   imports = [(modulesPath + "/profiles/qemu-guest.nix")];
#
#   boot.initrd.availableKernelModules = ["ahci" "xhci_pci" "virtio_pci" "sr_mod" "virtio_blk"];
#   boot.initrd.kernelModules = [];
#   boot.kernelModules = ["kvm-amd"];
#   boot.extraModulePackages = [];
#
#   # Root
#   fileSystems."/" = {
#     device = "/dev/disk/by-uuid/127b43d8-c0fb-492f-8b95-a619111aedcc";
#     fsType = "ext4";
#   };
#
#   fileSystems."/boot" = {
#     device = "/dev/disk/by-uuid/B7C6-8875";
#     fsType = "vfat";
#     options = ["fmask=0777" "dmask=0077"];
#   };
#
#   swapDevices = [];
#
#   networking.useDHCP = lib.mkDefault true;
#
#   nixpkgs.hostPlatform = lib.mkDefault "x86_64-linux";
# }
{
  config,
  lib,
  pkgs,
  modulesPath,
  ...
}: {
  imports = [(modulesPath + "/installer/scan/not-detected.nix")];

  boot = {
    initrd = {
      availableKernelModules = ["xhci_pci" "nvme" "usb_storage" "sd_mod"];
      kernelModules = [];
    };
    kernelModules = ["kvm-intel"];
    extraModulePackages = [];
  };

  fileSystems = {
    "/" = {
      device = "/dev/disk/by-uuid/36647bed-3d1c-4bbd-a546-cea389295aa8";
      fsType = "ext4";
      # Enable TRIM support
      options = ["noatime" "nodiratime" "discard"];
    };
    "/boot" = {
      device = "dev/disk/by-uuid/7D78-C563";
      fsType = "vfat";
      options = ["fmask=0077" "dmask=0077"];
    };
  };

  swapDevices = [];

  networking.useDHCP = lib.mkDefault true;

  nixpkgs.hostPlatform = lib.mkDefault "x86_64-linux";
  hardware.cpu.intel.updateMicrocode = lib.mkDefault config.hardware.enableRedistributableFirmware;
}
