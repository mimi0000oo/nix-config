{ inputs, config, pkgs, ... }: 

{

  imports = [
    inputs.nixos-hardware.nixosModules.lenovo-thinkpad-t480 # Hardware module for T480

    ./powerManagement.nix
    ./sound.nix
  ];

  hardware = {
    bluetooth.enable = true;
    bluetooth.powerOnBoot = true;
  };

}