{ config, pkgs, ... }:

{

  programs.git = {
    enable = true;
    userName = "mimi0000oo";
    userEmail = "mimiionescu07@gmail.com";
    aliases = {
      s = "status";
    };
  };
  
}