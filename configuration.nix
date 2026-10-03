{ ... }:
{
  imports = [
    ./hardware-configuration.nix
    ./modules
  ];

  nix.settings.experimental-features = [ "nix-command" "flakes" ];

  # Never change this after install
  system.stateVersion = "26.05";
}