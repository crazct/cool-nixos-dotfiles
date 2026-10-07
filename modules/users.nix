{ pkgs, ... }:
{
  users.users."jake" = {
    isNormalUser = true;
    description = "jake";
    extraGroups = [ "networkmanager" "wheel" ];
    shell = pkgs.fish;
    homeMode = "751";
  };
}