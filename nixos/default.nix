{ inputs, config, pkgs, ... }: 

{

  imports = [

    # Configuration
    ./boot.nix
    ./env.nix
    ./nix.nix
    ./programs.nix
    ./services.nix
    ./system.nix
  ];

  fileSystems."/mnt/nfs" = {
    device = "192.168.68.200:/Server";
    fsType = "nfs";
    options = [ "x-systemd.automount" "noauto" "_netdev" ];
  };

  hardware = {
    bluetooth.enable = true;
    bluetooth.powerOnBoot = true;
  };
  home-manager = { 
    extraSpecialArgs = { inherit inputs; };
    users = {
      mimi07 = import ../home;
    };
  };

  networking = {
    hostName = "nixos";
    wireless.iwd.enable = true;
  };

  powerManagement.enable = true;
  
  security = {
    polkit.enable = true;
    rtkit.enable = true;
  };

  users.users.mimi07 = {
    isNormalUser = true;
    extraGroups = [ "wheel" "video" ];
  };

}