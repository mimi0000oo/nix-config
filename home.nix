{ config, pkgs, ... }: 

{

  imports = [
    ./hyprland.nix
  ];

  home.username = "mimi07";
  home.homeDirectory = "/home/mimi07";

  xdg.enable = true;

  home.sessionVariables = {
    EDITOR = "nvim";
    XDG_CURRENT_DESKTOP = "Hyprland";
  };

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

    waybar = {
      enable = true;
      package = pkgs.waybar.overrideAttrs (oldAttrs: {
        mesonFlags = oldAttrs.mesonFlags ++ [ "-Dexperimental=true" ];
      });
    };

  };

  home.stateVersion = "23.05";

  programs.home-manager.enable = true;

}
