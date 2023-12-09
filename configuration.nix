# Edit this configuration file to define what should be installed on
# your system.  Help is available in the configuration.nix(5) man page
# and in the NixOS manual (accessible by running `nixos-help`).

{ inputs, config, pkgs, lib, ... }:

{
  imports =
    [ # Include the results of the hardware scan.
      ./hardware-configuration.nix
      inputs.home-manager.nixosModules.home-manager
      inputs.hyprland.nixosModules.default
    ];

  home-manager = { 
    extraSpecialArgs = { inherit inputs; };
    users = {
      mimi07 = import ./home.nix;
    };
  };

  # Use the systemd-boot EFI boot loader.
  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;

  networking.hostName = "nixos"; # Define your hostname.

  #environment.sessionVariables.NIXOS_OZONE_WL = "1";

  time.timeZone = "Europe/Bucharest";

  fonts.packages = with pkgs; [
    noto-fonts
    noto-fonts-emoji
    liberation_ttf
    freefont_ttf
    (nerdfonts.override { fonts = [
      "Inconsolata"
      "Iosevka"
      "JetBrainsMono"
      "Noto"
      "NerdFontsSymbolsOnly"
      "SpaceMono"
      "Ubuntu"
      "UbuntuMono"
      ];
    })
  ];
	
  services.xserver = {
    enable = true;
    # windowManager.i3.enable = true;
    displayManager.sddm = {
      enable = true;
      theme = "${ import ./sddm-theme.nix { inherit pkgs; } }";
    };
    autorun = true;
  };
  services.gnome.gnome-keyring.enable = true;
  services.xserver.libinput.enable = true;

  users.users.mimi07 = {
    isNormalUser = true;
    extraGroups = [ "wheel" "video" ];

  };

  systemd.tmpfiles.rules = [
    "d /home/mimi07/Pictures 0755 mimi07 users -"
    "d /home/mimi07/Pictures/wallpapers 0755 mimi07 users -"
    "d /home/mimi07/Pictures/wallpapers/gifs 0755 mimi07 users -"
  ];


  # List packages installed in system profile. To search, run:
  # $ nix search wget
  environment.systemPackages = with pkgs; [
    vim # Do not forget to add an editor to edit configuration.nix! The Nano editor is also installed by default.
    neovim    
    wget
    aria2
    kitty
    neofetch
    firefox
    (pkgs.discord.override {
      withOpenASAR = true;
    })
    waybar
    hyprland
    wofi
    (vscode-with-extensions.override {
      vscode = vscodium;
      vscodeExtensions = with vscode-extensions; [
        bbenoist.nix
        llvm-vs-code-extensions.vscode-clangd
        catppuccin.catppuccin-vsc
      ];
    })
    libsForQt5.qt5.qtgraphicaleffects
    waypaper
    swww
    wl-clipboard
    dunst
    libnotify
    pavucontrol
    polkit_gnome
    gnome.gnome-disk-utility
    spotify
    git
    iwd
    iwgtk
    xwaylandvideobridge
    xorg.xwininfo
    btop
    htop
    neofetch
    fastfetch
    rustdesk
    anydesk
    nwg-displays
    nwg-look
  ];

  networking.wireless.iwd.enable = true;
  hardware.bluetooth.enable = true;
  hardware.bluetooth.powerOnBoot = true;
  services.blueman.enable = true;
  
  services.fwupd.enable = true;
  programs.hyprland.enable = true;

  nixpkgs.config.allowUnfreePredicate = pkg: builtins.elem (lib.getName pkg) [
    "discord"
    "spotify"
    "libsciter"
    "anydesk"
  ];

  sound.enable = true;
  security.rtkit.enable = true;
  services.pipewire = {
    enable = true;
    alsa.enable = true;
    alsa.support32Bit = true;
    pulse.enable = true;
    jack.enable = true;
  };

  nix.settings.experimental-features = [ "nix-command" "flakes" ];

  system.stateVersion = "23.05"; # Did you read the comment?

}

