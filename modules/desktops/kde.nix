{ pkgs, ... }:
{
  services.xserver.enable = true;

  services.desktopManager.plasma6.enable = true;
  environment.plasma6.excludePackages = [ pkgs.kdePackages.discover ];
  services.displayManager.sddm.enable = true;
  services.displayManager.sddm.wayland.enable = true;

  services.xserver.xkb = {
    layout = "us";
    variant = "";
  };

  services.printing.enable = false;
}