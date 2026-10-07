{ pkgs, ... }:
{
  programs.niri.enable = true;

  programs.dms-shell.enable = true;

  services.displayManager.dms-greeter = {
    enable = true;
    compositor.name = "niri";  # Or "hyprland" or "sway"
    configHome = "/home/jake";
  };

  environment.systemPackages = with pkgs; [
    nautilus
    xwayland-satellite
    ghostty
  ];

}