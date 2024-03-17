{ config, pkgs, ... }: 

let
  unstable = import
    (builtins.fetchTarball {
      url = https://github.com/nixos/nixpkgs/tarball/nixos-unstable;
      sha256 = "05lkkw0a63v1zan5g31blhckw6zf66p4gfqkpp01mp7fqwykmzx4";
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

      amberol
      android-studio
      android-tools
      anydesk
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