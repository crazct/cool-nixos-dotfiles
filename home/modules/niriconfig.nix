{ config, ... }:
let
  niriDir = "/home/jake/.config/niri";
in
{
  xdg.configFile."niri/config.kdl".source =
    config.lib.file.mkOutOfStoreSymlink "${niriDir}/config.kdl";

  xdg.configFile."niri/dms".source =
    config.lib.file.mkOutOfStoreSymlink "${niriDir}/dms";
}