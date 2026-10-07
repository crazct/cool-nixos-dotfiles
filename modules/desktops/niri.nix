{ pkgs, ... }:
{
  programs.niri.enable = true;

  programs.dms-shell.enable = true;

  programs.dconf.enable = true;

  services.displayManager.dms-greeter = {
    enable = true;
    compositor.name = "niri";  # Or "hyprland" or "sway"
    configHome = "/home/jake";
  };

  environment.systemPackages = with pkgs; [
    nautilus
    xwayland-satellite
    ghostty
    adw-gtk3
  ];

  programs.dconf.profiles.user.databases = [{
    settings."org/gnome/desktop/interface" = {
      gtk-theme = "adw-gtk3-dark";
      color-scheme = "prefer-dark";
    };
  }];

}