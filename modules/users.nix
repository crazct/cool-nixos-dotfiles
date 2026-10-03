{ ... }:
{
  users.users."jake" = {
    isNormalUser = true;
    description = "jake";
    extraGroups = [ "networkmanager" "wheel" ];
  };
}