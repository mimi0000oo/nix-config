# Edit this configuration file to define what should be installed on
# your system.  Help is available in the configuration.nix(5) man page
# and in the NixOS manual (accessible by running `nixos-help`).

{ inputs, config, pkgs, lib, ... }:

{
  imports = [ # Include the results of the hardware scan.
    ./hardware-configuration.nix
    inputs.home-manager.nixosModules.home-manager
    inputs.hyprland.nixosModules.default
    inputs.nixos-hardware.nixosModules.lenovo-thinkpad-t480
    inputs.fingerprint-sensor.nixosModules.open-fprintd
    inputs.fingerprint-sensor.nixosModules.python-validity
    ./nixos
  ];

  # services.open-fprintd.enable = true;
  # services.python-validity.enable = true;

  # security.pam.services.sudo.text = ''

  #   # Account management.
  #   account required pam_unix.so # unix (order 10900)

  #   # Authentication management.
  #   auth sufficient ${inputs.fingerprint-sensor.localPackages.fprintd-clients}/lib/security/pam_fprintd.so
  #   auth sufficient pam_unix.so likeauth try_first_pass # unix (order 11600)
  #   auth required pam_deny.so # deny (order 12400)

  #   # Password management.
  #   password sufficient pam_unix.so nullok yescrypt # unix (order 10200)

  #   # Session management.
  #   session required pam_env.so conffile=/etc/pam/environment readenv=0 # env (order 10100)
  #   session required pam_unix.so # unix (order 10200)

  # '';
  

  home-manager = { 
    extraSpecialArgs = { inherit inputs; };
    users = {
      mimi07 = import ./home;
    };
  };

  # Use the systemd-boot EFI boot loader.
  # boot.loader.systemd-boot.enable = true;
  # boot.loader.efi.canTouchEfiVariables = true;

  # boot.kernelParams = [ "intel_pstate=active" ];

  networking.hostName = "nixos"; # Define your hostname.

  # environment.sessionVariables = {
  #   EDITOR = "nvim";
  #   XDG_CURRENT_DESKTOP = "Hyprland";
  #   QT_QPA_PLATFORM="wayland;xcb";
  #   NIXOS_OZONE_WL = "1";
  #   TERMINAL = "kitty";
  # };

  time.timeZone = "Europe/Bucharest";

  # fonts.packages = with pkgs; [
  #   noto-fonts
  #   noto-fonts-emoji
  #   liberation_ttf
  #   freefont_ttf
  #   (nerdfonts.override { fonts = [
  #     "Inconsolata"
  #     "Iosevka"
  #     "JetBrainsMono"
  #     "Noto"
  #     "NerdFontsSymbolsOnly"
  #     "SpaceMono"
  #     "Ubuntu"
  #     "UbuntuMono"
  #     "DroidSansMono"
  #     ];
  #   })
  # ];
	
  # services.xserver = {
  #   enable = true;
  #   displayManager.sddm = {
  #     enable = true;
  #     theme = "${ import ./sddm-theme.nix { inherit pkgs; } }";
  #   };
  #   autorun = true;
  # };
  # services.gnome.gnome-keyring.enable = true;
  # services.xserver.libinput.enable = true;

  users.users.mimi07 = {
    isNormalUser = true;
    extraGroups = [ "wheel" "video" ];

  };

  # systemd.tmpfiles.rules = [
  #   "d /home/mimi07/Pictures 0755 mimi07 users -"
  #   "d /home/mimi07/Pictures/wallpapers 0755 mimi07 users -"
  #   "d /home/mimi07/Pictures/wallpapers/gifs 0755 mimi07 users -"
  #   "d /home/mimi07/Pictures/wallpapers/images 0755 mimi07 users -"
  # ];


  # List packages installed in system profile. To search, run:
  # $ nix search wget
  # environment.systemPackages = with pkgs; [
  #   vim # Do not forget to add an editor to edit configuration.nix! The Nano editor is also installed by default.
  #   neovim    
  #   wget
  #   aria2
  #   kitty
  #   neofetch
  #   firefox
  #   (pkgs.discord.override {
  #     # remove any overrides that you don't want
  #     withOpenASAR = true;
  #   })
  #   waybar
  #   hyprland
  #   wofi
  #   (vscode-with-extensions.override {
  #     vscode = vscodium;
  #     vscodeExtensions = with vscode-extensions; [
  #       bbenoist.nix
  #       llvm-vs-code-extensions.vscode-clangd
  #       catppuccin.catppuccin-vsc
  #     ];
  #   })
  #   libsForQt5.qt5.qtgraphicaleffects
  #   waypaper
  #   swww
  #   wl-clipboard
  #   dunst
  #   libnotify
  #   pavucontrol
  #   polkit_gnome
  #   gnome.gnome-disk-utility
  #   spotify
  #   git
  #   iwd
  #   iwgtk
  #   xwaylandvideobridge
  #   xorg.xwininfo
  #   btop
  #   htop
  #   neofetch
  #   fastfetch
  #   rustdesk
  #   anydesk
  #   nwg-displays
  #   nwg-look
  #   psmisc
  #   python311Packages.pygobject3
  #   p7zip
  #   gnutar
  #   unrar
  #   unzip
  #   obs-studio
  #   # swaynotificationcenter
  #   usbutils
  #   wlr-randr
  #   plasma5Packages.plasma-thunderbolt
  #   tor-browser
  #   signal-desktop
  #   mpv
  #   playerctl
  #   pulseaudio
  #   brightnessctl
  #   pcmanfm
  #   jellyfin-media-player
  #   gnome.nautilus
  #   libsForQt5.dolphin
  #   cmatrix
  #   kdenlive
  #   audacity
  #   libdrm
  # ];

  # programs.thunar = {
  #   enable = true;
  #   plugins = with pkgs.xfce; [
  #     thunar-archive-plugin
  #     thunar-volman
  #     xfconf
  #   ];

  # };
  # services.gvfs.enable = true; # Mount, trash, and other functionalities

  # services.hardware.bolt.enable = true;

  networking.wireless.iwd.enable = true;
  # hardware.bluetooth.enable = true;
  # hardware.bluetooth.powerOnBoot = true;
  # services.blueman.enable = true;
  
  # services.fwupd.enable = true;
  # programs.hyprland.enable = true;

  # sound.enable = true;
  security.rtkit.enable = true;
  # services.pipewire = {
  #   enable = true;
  #   alsa.enable = true;
  #   alsa.support32Bit = true;
  #   pulse.enable = true;
  #   jack.enable = true;
  # };

  # xdg = {
  #   portal = {
  #     enable = true;
  #     extraPortals = [ pkgs.xdg-desktop-portal-gtk pkgs.xdg-desktop-portal-wlr ];
  #     config = {
  #       common = {
  #         default = [
  #           "gtk"
  #         ];
  #       };
  #     };
  #   };
  # };

  # look at dns at home
  # networking = {
  #   nameservers = [ "" ];
  #   # nameservers = [ "127.0.0.1" "9.9.9.9" "1.1.1.1" ];
  #   # If using dhcpcd:
  #   dhcpcd.extraConfig = "nohook resolv.conf";
  # };

  # fileSystems."/mnt/nfs" = {
  #   device = "192.168.68.200:/Server";
  #   fsType = "nfs";
  #   options = [ "x-systemd.automount" "noauto" "_netdev" ];
  # };

  nix.settings.experimental-features = [ "nix-command" "flakes" ];

  system.stateVersion = "23.05"; # Did you read the comment?

}

