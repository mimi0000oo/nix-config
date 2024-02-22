{ config, pkgs, ... }: 
let
  unstable = import
    (builtins.fetchTarball {
      url = https://github.com/nixos/nixpkgs/tarball/master;
      sha256 = "0k9dd9dbjjvbjjpka4adzhgbqxxqnxgk166i49f1lc9qk746b8l6";
    })
    # reuse the current configuration
    { 
      config = config.nixpkgs.config;
      system = "x86_64-linux";
    };
in
{

  environment.systemPackages = with pkgs; [

    # unstable.rustdesk-flutter
    unstable.rustdesk

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
    git
    gnome.gnome-disk-utility
    gnome.nautilus
    gnutar
    grim
    htop
    hyprland
    iwd
    iwgtk
    jellyfin-media-player
    kdenlive
    kitty
    libsForQt5.dolphin
    libsForQt5.qt5.qtgraphicaleffects
    mpv
    neofetch
    neovim
    nwg-displays
    nwg-look
    obsidian
    obs-studio
    p7zip
    pavucontrol
    pcmanfm
    pipewire
    plasma5Packages.plasma-thunderbolt
    playerctl
    polkit_gnome
    psmisc
    pulseaudio
    # rustdesk
    signal-desktop
    spotify
    swww
    tor-browser
    unrar
    unzip
    usbutils
    vesktop
    swappy
    vim
    vscodium
    waybar
    waypaper
    wget
    wireplumber
    wl-clipboard
    wlr-randr
    wofi
    xorg.xwininfo
    xwaylandvideobridge


    # pinta
    # rnote
    amberol
    loupe
    snapshot
    gnome.simple-scan
    slurp
    image-roll

    # gcc
    # python3
    galaxy-buds-client

    # android-studio
    # android-tools

    # nodePackages.nodejs

    # # unstable.rustdesk
    # rustc
    # cargo

  ];

}
