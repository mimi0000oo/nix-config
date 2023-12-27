{ config, pkgs, ... }: 
let 

  vscodium = (pkgs.vscode-with-extensions.override {
    vscode = pkgs.vscodium;
    vscodeExtensions = with pkgs.vscode-extensions; [
      bbenoist.nix
      llvm-vs-code-extensions.vscode-clangd
      catppuccin.catppuccin-vsc
    ];
  });

in
{

  environment.systemPackages = with pkgs; [

    anydesk
    aria2
    audacity
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

  ];

}