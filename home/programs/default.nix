{ config, pkgs, ... }: 

{

  imports = [
    ./git.nix
    ./gtk.nix
    ./hyprland.nix
    ./vscodium.nix
    ./waybar.nix
  ];

}