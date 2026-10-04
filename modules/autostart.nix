{ config, pkgs, ... }:

{
  environment.etc = {
    "xdg/autostart/steam.desktop".text = ''
      [Desktop Entry]
      Type=Application
      Name=Steam
      Exec=steam -silent
    '';

    "xdg/autostart/discord.desktop".text = ''
      [Desktop Entry]
      Type=Application
      Name=Discord
      Exec=discord --start-minimized
    '';

    #"xdg/autostart/rufin.desktop".text = ''
    #  [Desktop Entry]
    #  Type=Application
    #  Name=Rufin
    #  Exec=flatpak run blah.blah.blah
    #'';
  };
}