{ config, pkgs, ... }: 

{

  environment.systemPackages = with pkgs; [

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
    rustdesk
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


    pinta
    rnote
    amberol
    loupe
    snapshot
    gnome.simple-scan

  ];

}