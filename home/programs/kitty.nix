{ config, pkgs, ... }:

{

  programs.kitty = {
    enable = true;
    theme = "Catppuccin-Mocha";
    extraConfig = ''
      background_opacity 0.85
    '';
  };

}