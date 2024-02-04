{ config, pkgs, lib, ... }: 

{
  
  nixpkgs.config.allowUnfreePredicate = pkg: builtins.elem (lib.getName pkg) [
    "anydesk"
    "corefonts"
    "discord"
    "libsciter"
    "spotify"
    "unrar"
    "obsidian"
    "android-studio-stable"
  ];

  nixpkgs.config.permittedInsecurePackages = [
    "electron-25.9.0" # obsidian
  ];

}