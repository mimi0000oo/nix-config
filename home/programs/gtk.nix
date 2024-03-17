{ config, pkgs, ... }:

{

  home.pointerCursor = {
    gtk.enable = true;
    # x11.enable = true;
    package = pkgs.bibata-cursors;
    name = "Bibata-Modern-Classic";
    size = 12;
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

    iconTheme = {
      name = "Papirus-Dark";
      package = pkgs.papirus-icon-theme;
    };

    font = {
      name = "Sans";
      # size = 11;
    };
  };

  dconf = {
    enable = true;
    settings."org/gnome/desktop/interface".color-scheme = "prefer-dark";
  };
  
}