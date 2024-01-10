{ config, pkgs, ... }: 

{

  home.file = {
    "Pictures/wallpapers/images/wallpaper.png".source = builtins.fetchurl {
      url = https://raw.githubusercontent.com/D3Ext/aesthetic-wallpapers/main/images/fractal.png;
      sha256 = "16y02y9iv7m8ggr9kb3ggjcjmbl747rmhjw3w8jsd23w6qh6bhz9";
    };
    ".config/waypaper/config.ini".source = config.lib.file.mkOutOfStoreSymlink "/etc/nixos/home/files/config.ini";
  };

}