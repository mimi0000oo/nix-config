{ inputs, config, pkgs, ... }:

{

  imports = [ # Include the results of the hardware scan.
    ./hardware-configuration.nix
    ./nixos

    inputs.nixos-hardware.nixosModules.lenovo-thinkpad-t480 # Hardware module for T480
    inputs.hyprland.nixosModules.default # Hyprland module for NixOS configuration
    inputs.home-manager.nixosModules.home-manager # Home-manager
    # Fingerprint sensor
    inputs.fingerprint-sensor.nixosModules.open-fprintd 
    inputs.fingerprint-sensor.nixosModules.python-validity
  ];

  virtualisation.docker = {
    enable = true;
    rootless = {
      enable = true;
      setSocketVariable = true;
    };
  };


  system.stateVersion = "23.11"; # Did you read the comment?

}

