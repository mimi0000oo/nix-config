{ config, pkgs, ... }: 

let
  unstable = import
    (builtins.fetchTarball {
      url = https://github.com/nixos/nixpkgs/tarball/nixos-unstable;
      sha256 = "02shwkxrjgnwbszbp25lzsr1r9q3vry3bfg7cp60h3blgld9dy74";
    })
    # reuse the current configuration
    { 
      config = config.nixpkgs.config;
      system = "x86_64-linux";
    };
in

{

  environment = {
    systemPackages = with pkgs; [

      aria2
      audacity
      bitwarden
      brightnessctl
      btop
      cmatrix
      dunst
      fastfetch
      firefox
      fzf
      g4music
      galaxy-buds-client
      git
      gnome.gnome-disk-utility
      gnome.nautilus
      gnome.simple-scan
      gnutar
      grim
      htop
      image-roll
      iwd
      iwgtk
      jellyfin-media-player
      kdenlive
      kitty
      libreoffice
      libsForQt5.dolphin
      libsForQt5.qt5.qtgraphicaleffects
      loupe
      mpv
      neofetch
      neovim
      nodejs
      nwg-displays
      nwg-look
      obs-studio
      obsidian
      p7zip
      pavucontrol
      pcmanfm
      pipewire
      plasma5Packages.plasma-thunderbolt
      playerctl
      polkit_gnome
      psmisc
      pulseaudio
      python3
      signal-desktop
      slurp
      snapshot
      spotify
      swappy
      swww
      tor-browser
      unrar
      unzip
      usbutils
      vim
      vscodium
      waybar
      waypaper
      wget
      wireplumber
      wl-clipboard
      wlr-randr
      wofi
      webcord-vencord
      xdg-desktop-portal-hyprland
      xorg.xwininfo
      xwaylandvideobridge
      youtube-music
      
      unstable.rustdesk-flutter
    ];

    sessionVariables = {
      # NIXOS_OZONE_WL = "1";
    };
  };

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