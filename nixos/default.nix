{ inputs, config, pkgs, ... }: 

{

  imports = [

    # Configuration
    ./boot
    ./fs
    ./hardware
    ./packages
    ./programs
    ./services
    ./users
  ];

}