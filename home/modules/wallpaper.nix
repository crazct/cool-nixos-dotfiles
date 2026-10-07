{ config, ... }:
let
  repo = "${config.home.homeDirectory}/nixos/home";
in
{
  home.file."Pictures/Wallpapers".source =
    config.lib.file.mkOutOfStoreSymlink "${repo}/wallpapers";
}