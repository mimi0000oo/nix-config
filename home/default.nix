{ config, pkgs, ... }: 

{

  imports = [
    ./file
    ./programs
    ./services
  ];

  home.username = "mimi07";
  home.homeDirectory = "/home/mimi07";

  home.stateVersion = "23.05";

  programs.home-manager.enable = true;

}
