{ config, ... }:
let
  niriDir = "${config.home.homeDirectory}/nixos/home/niri";   # real files, inside your flake
  dmsDir = "${config.home.homeDirectory}/nixos/home";
in
{
  xdg.configFile."niri/config.kdl".source =
    config.lib.file.mkOutOfStoreSymlink "${niriDir}/config.kdl";

  xdg.configFile."niri/dms".source =
    config.lib.file.mkOutOfStoreSymlink "${niriDir}/dms";

  xdg.configFile."DankMaterialShell".source =
    config.lib.file.mkOutOfStoreSymlink "${dmsDir}/DankMaterialShell";    
}