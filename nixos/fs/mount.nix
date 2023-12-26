{ config, pkgs, ... }: 

{

  fileSystems."/mnt/nfs" = {
    device = "192.168.68.200:/Server";
    fsType = "nfs";
    options = [ "x-systemd.automount" "noauto" "_netdev" ];
  };

}