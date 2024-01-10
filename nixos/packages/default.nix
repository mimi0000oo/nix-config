{ config, pkgs, ... }: 

{

  imports = [
    ./allow.nix
    ./fonts.nix
    ./overlays.nix
    ./packages.nix
  ];

}