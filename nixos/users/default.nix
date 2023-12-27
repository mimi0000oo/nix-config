{ inputs, config, pkgs, ... }: 

{

  imports = [
    inputs.home-manager.nixosModules.home-manager # Home-manager
  ];

  users.users.mimi07 = {
    isNormalUser = true;
    extraGroups = [ "wheel" "video" ];
  };

  home-manager = { 
    extraSpecialArgs = { inherit inputs; };
    users = {
      mimi07 = import ../../home;
    };
  };
  
}