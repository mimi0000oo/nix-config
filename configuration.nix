{ config, pkgs, ... }:

{
  imports = [ # Include the results of the hardware scan.
    ./hardware-configuration.nix
    ./nixos
  ];

  # look at dns at home
  # networking = {
  #   nameservers = [ "" ];
  #   # nameservers = [ "127.0.0.1" "9.9.9.9" "1.1.1.1" ];
  #   # If using dhcpcd:
  #   dhcpcd.extraConfig = "nohook resolv.conf";
  # };
  boot.extraModulePackages = with config.boot.kernelPackages; [
    v4l2loopback
  ];
  boot.extraModprobeConfig = ''
    options v4l2loopback devices=1 video_nr=1 card_label="OBS Cam" exclusive_caps=1
  '';
  security.polkit.enable = true;

  powerManagement.enable = true;
  services.thermald.enable = true;
  services.tlp = {
    enable = true;
    # settings = {
    #   CPU_SCALING_GOVERNOR_ON_AC = "performance";
    #   CPU_SCALING_GOVERNOR_ON_BAT = "powersave";

    #   CPU_ENERGY_PERF_POLICY_ON_BAT = "power";
    #   CPU_ENERGY_PERF_POLICY_ON_AC = "performance";

    # };
  };


  nix.settings.experimental-features = [ "nix-command" "flakes" ];

  system.stateVersion = "23.05"; # Did you read the comment?

}

