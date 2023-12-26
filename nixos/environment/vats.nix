{ config, pkgs, ... }: 

{

  environment.sessionVariables = {
    EDITOR = "nvim";
    XDG_CURRENT_DESKTOP = "Hyprland";
    QT_QPA_PLATFORM="wayland;xcb";
    NIXOS_OZONE_WL = "1";
    TERMINAL = "kitty";
  };


}