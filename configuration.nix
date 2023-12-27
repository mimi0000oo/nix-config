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

  nix.settings.experimental-features = [ "nix-command" "flakes" ];

  system.stateVersion = "23.05"; # Did you read the comment?

}

