{ inputs, config, pkgs, ... }: 

{

  imports = [
    inputs.hyprland.nixosModules.default # Hyprland module for NixOS configuration

    ./xdg.nix
    ./spotify.nix
  ];

  programs = {
    
    # Enable thunar file manager with plugins
    thunar = {
      enable = true;
      plugins = with pkgs.xfce; [
        thunar-archive-plugin
        thunar-volman
        xfconf
      ];
    };

    hyprland.enable = true;

    neovim = {
      enable = true;
      defaultEditor = true;
    };

  };

}