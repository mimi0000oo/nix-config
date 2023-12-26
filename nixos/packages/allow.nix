{ config, pkgs, lib, ... }: 

{
  
  nixpkgs.config.allowUnfreePredicate = pkg: builtins.elem (lib.getName pkg) [
    "anydesk"
    "corefonts"
    "discord"
    "libsciter"
    "spotify"
    "unrar"
  ];

}