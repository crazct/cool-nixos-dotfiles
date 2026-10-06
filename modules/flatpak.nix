{ pkgs, inputs, ... }:

{
  imports = [
    inputs.nix-flatpak.nixosModules.nix-flatpak
  ];

  services.flatpak = {
    enable = true;
    packages = [
      "org.vinegarhq.Sober"
      "io.github.screwys.Rufin"
      "app.fluxer.Fluxer"
    ];
  };

  xdg.portal.enable = true;
}