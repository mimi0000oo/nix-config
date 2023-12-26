{ config, pkgs, ... }: 

{

  imports = [
    ./powerManagement.nix
    ./sound.nix
  ];

  hardware = {
    bluetooth.enable = true;
    bluetooth.powerOnBoot = true;
  };

}