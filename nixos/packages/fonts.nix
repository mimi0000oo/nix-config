{ config, pkgs, ... }: 

{

  fonts.packages = with pkgs; [
    noto-fonts
    noto-fonts-emoji
    liberation_ttf
    freefont_ttf
    corefonts
    (nerdfonts.override { fonts = [
      "Inconsolata"
      "Iosevka"
      "JetBrainsMono"
      "Noto"
      "NerdFontsSymbolsOnly"
      "SpaceMono"
      "Ubuntu"
      "UbuntuMono"
      "DroidSansMono"
      ];
    })
  ];

}