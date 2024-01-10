{ config, pkgs, ... }: 

{

  environment.sessionVariables = {
    XDG_CURRENT_DESKTOP = "Hyprland";
    QT_QPA_PLATFORM="wayland;xcb";
    NIXOS_OZONE_WL = "1";
    MOZ_USE_XINPUT2 = "1";
  };


}