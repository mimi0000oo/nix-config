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
    settings = {
      CPU_SCALING_GOVERNOR_ON_AC = "performance";
      CPU_SCALING_GOVERNOR_ON_BAT = "powersave";

      CPU_ENERGY_PERF_POLICY_ON_BAT = "power";
      CPU_ENERGY_PERF_POLICY_ON_AC = "performance";

      SOUND_POWER_SAVE_ON_AC = 1;
      SOUND_POWER_SAVE_ON_BAT = 1;
      SOUND_POWER_SAVE_CONTROLLER = "Y";

      INTEL_GPU_MIN_FREQ_ON_AC = 300;
      INTEL_GPU_MAX_FREQ_ON_AC = 1100;
      INTEL_GPU_BOOST_FREQ_ON_AC = 1000;

      INTEL_GPU_MIN_FREQ_ON_BAT = 300;
      INTEL_GPU_MAX_FREQ_ON_BAT = 850;
      INTEL_GPU_BOOST_FREQ_ON_BAT = 700;

      NMI_WATCHDOG = 0;

      WIFI_PWR_ON_AC = "off";
      WIFI_PWR_ON_BAT = "on";

      WOL_DISABLE = "Y";

      PLATFORM_PROFILE_ON_AC = "performance";
      PLATFORM_PROFILE_ON_BAT = "low-power";

      CPU_DRIVER_OPMODE_ON_AC = "active";
      CPU_DRIVER_OPMODE_ON_BAT = "active";

      CPU_MIN_PERF_ON_AC = 0;
      CPU_MAX_PERF_ON_AC = 100;
      CPU_MIN_PERF_ON_BAT = 0;
      CPU_MAX_PERF_ON_BAT = 40;

      CPU_BOOST_ON_AC = 1;
      CPU_BOOST_ON_BAT = 0;

      DEVICES_TO_DISABLE_ON_STARTUP = "bluetooth wifi wwan";
      DEVICES_TO_DISABLE_ON_LAN_CONNECT = "wifi wwan";
      DEVICES_TO_DISABLE_ON_WIFI_CONNECT = "wwan";
      DEVICES_TO_DISABLE_ON_WWAN_CONNECT = "wifi";

    };
  };

  services.printing.enable = true;
  services.avahi = {
    enable = true;
    nssmdns = true;
    openFirewall = true;
  };


  nix.settings.experimental-features = [ "nix-command" "flakes" ];

  system.stateVersion = "23.05"; # Did you read the comment?

}

