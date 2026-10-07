{ pkgs, ... }:
{
  programs.niri.enable = true;

  programs.dms-shell.enable = true;

  services.displayManager.dms-greeter = {
    enable = true;
    compositor.name = "niri";  # Or "hyprland" or "sway"
  };

  environment.systemPackages = with pkgs; [
    nautilus
    ghostty
  ];

}