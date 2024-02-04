{ config, pkgs, ... }: 

{

  imports = [
    ./vscodium
    
    ./git.nix
    ./gtk.nix
    ./hyprland.nix
    ./kitty.nix
    ./waybar.nix
  ];

}