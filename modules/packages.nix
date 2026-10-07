{ pkgs, ... }:
{
  nixpkgs.config.allowUnfree = true;

  programs.firefox.enable = true;
  
  programs.localsend = {
  enable = true;
  openFirewall = true;
  };

  environment.systemPackages = with pkgs; [
    vim
    wget
    git
    vscode
    discord
    pfetch
    kitty
  ];
}