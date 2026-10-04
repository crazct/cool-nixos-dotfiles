{ pkgs, ... }:
{
  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;
  boot.kernelParams = [ "nvidia-drm.fbdev=1" ];

  boot.kernelPackages = pkgs.linuxPackages_latest;
}