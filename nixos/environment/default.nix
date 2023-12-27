{ config, pkgs, ... }: 

{

  imports = [
    ./vars.nix
  ];

  networking.hostName = "nixos";

  time.timeZone = "Europe/Bucharest";

}
