{ config, pkgs, ... }: 

{

  home.file = {
    "Pictures/wallpapers/gifs/wallpaper.gif".source = builtins.fetchurl {
      url = https://raw.githubusercontent.com/D3Ext/aesthetic-wallpapers/main/images/nord_car_live.gif;
      sha256 = "1pl466cmnsp5hhxlz8z7kd3r7zdr365wwx94l9g1sf48fy0bv0qb";
    };
    ".config/waypaper/config.ini".source = config.lib.file.mkOutOfStoreSymlink "/home/mimi07/.nixos/config.ini";
  };

}