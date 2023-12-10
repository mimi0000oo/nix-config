{ config, pkgs, ... }: 

{

  imports = [
    ../hyprland.nix
    ../waybar.nix
  ];

  home.username = "mimi07";
  home.homeDirectory = "/home/mimi07";


  home.file = {
    "Pictures/wallpapers/gifs/wallpaper.gif".source = builtins.fetchurl {
      url = https://raw.githubusercontent.com/D3Ext/aesthetic-wallpapers/main/images/nord_car_live.gif;
      sha256 = "1pl466cmnsp5hhxlz8z7kd3r7zdr365wwx94l9g1sf48fy0bv0qb";
    };
    ".config/waypaper/config.ini".source = config.lib.file.mkOutOfStoreSymlink "/home/mimi07/.nixos/config.ini";
  };

  # home.sessionVariables = {
  #   EDITOR = "nvim";
  #   XDG_CURRENT_DESKTOP = "Hyprland";
  #   QT_QPA_PLATFORM="wayland;xcb"
  # };

  gtk = {
    enable = true;
    theme = {
      name = "Catppuccin-Mocha-Standard-Sky-Dark";
      package = pkgs.catppuccin-gtk.override {
        accents = [ "sky" ];
        size = "standard";
        variant = "mocha";
      };
    };
    cursorTheme = {
      name = "Bibata-Modern-Classic";
      package = pkgs.bibata-cursors;
    };
    iconTheme = {
      name = "Papirus-Dark";
      package = pkgs.papirus-icon-theme;
    };
  };

  programs = {
    git = {
      enable = true;
      userName = "mimi0000oo";
      userEmail = "mimiionescu07@gmail.com";
      aliases = {
        s = "status";
      };
    };

  };

  home.stateVersion = "23.05";

  programs.home-manager.enable = true;

}
