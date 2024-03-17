{ config, pkgs, ... }: 

{

  systemd = {
    tmpfiles.rules = [
      "d /home/mimi07/Pictures 0755 mimi07 users -"
      "d /home/mimi07/Pictures/wallpapers 0755 mimi07 users -"
      "d /home/mimi07/Pictures/wallpapers/gifs 0755 mimi07 users -"
      "d /home/mimi07/Pictures/wallpapers/images 0755 mimi07 users -"
    ];
    user.services.polkit-gnome-authentication-agent-1 = {
      description = "polkit-gnome-authentication-agent-1";
      wantedBy = [ "graphical-session.target" ];
      wants = [ "graphical-session.target" ];
      after = [ "graphical-session.target" ];
      serviceConfig = {
        Type = "simple";
        ExecStart = "${pkgs.polkit_gnome}/libexec/polkit-gnome-authentication-agent-1";
        Restart = "on-failure";
        RestartSec = 1;
        TimeoutStopSec = 10;
      };
    };
  };

  xdg.portal = {
    enable = true;
    extraPortals = [ pkgs.xdg-desktop-portal-gtk pkgs.xdg-desktop-portal-wlr ];
    config.common.default = [
      "gtk"
    ];
  }; 

}