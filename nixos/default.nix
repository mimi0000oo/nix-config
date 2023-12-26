{ config, pkgs, ... }: 

{

  imports = [
    ./boot
    ./fs
    ./hardware
    ./packages
    ./programs
    ./services
  ];

}