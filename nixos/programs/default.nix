{ config, pkgs, ... }: 

{

  imports = [
    ./xdg.nix
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

  };

}