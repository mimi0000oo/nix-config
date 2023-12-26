{ config, pkgs, ... }: 

{

  boot = {
    kernelParams = [ "intel_pstate=active" ];
    loader.systemd-boot.enable = true;
    loader.efi.canTouchEfiVariables = true;
  };

}
