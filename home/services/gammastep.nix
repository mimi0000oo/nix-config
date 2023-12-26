{ config, pkgs, ... }: 

{

  services.gammastep = {
    enable = true;
    provider = "manual";
    latitude = 44.940399;
    longitude = 26.023821;
  };

}