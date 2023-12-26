{ config, pkgs, ... }: 

{

  imports = [
    ./fonts.nix
    ./packages.nix
    ./allow.nix
  ];

}