{ pkgs, ... }:
{
  imports = [
    ./modules/plasma.nix
    ./modules/papirus.nix
  ];

  #theming
  home.file.".local/share/plasma/desktoptheme/Dream-Color-Plasma".source = ./themes/Dream-Color-Plasma;
  home.file.".local/share/icons/Kitty".source = ./themes/Kitty;

  home.username = "jake";
  home.homeDirectory = "/home/jake";
  home.stateVersion = "26.05";  # never change this
}