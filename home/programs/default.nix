{ config, pkgs, ... }: 

{

  imports = [
    ./git.nix
    ./gtk.nix
    ./hyprland.nix
    ./kitty.nix
    ./vscodium.nix
    ./waybar.nix
  ];

}