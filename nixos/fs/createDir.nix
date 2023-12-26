{ config, pkgs, ... }: 

{

  systemd.tmpfiles.rules = [
    "d /home/mimi07/Pictures 0755 mimi07 users -"
    "d /home/mimi07/Pictures/wallpapers 0755 mimi07 users -"
    "d /home/mimi07/Pictures/wallpapers/gifs 0755 mimi07 users -"
    "d /home/mimi07/Pictures/wallpapers/images 0755 mimi07 users -"
  ];

}