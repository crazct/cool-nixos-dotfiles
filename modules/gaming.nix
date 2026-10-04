{ pkgs, inputs, ... }:
{
  programs.steam = {
    enable = true;
    extraCompatPackages = [
      pkgs.proton-ge-bin
      inputs.chaotic.packages.${pkgs.system}.proton-cachyos
    ];
  };

  programs.gamemode.enable = true;

  environment.systemPackages = with pkgs; [
    mangohud
    protonplus
    faugus-launcher
    prismlauncher
  ];
}