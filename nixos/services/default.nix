{ inputs, config, pkgs, ... }: 

{

  imports = [
    # Fingreprint modules
    inputs.fingerprint-sensor.nixosModules.open-fprintd
    inputs.fingerprint-sensor.nixosModules.python-validity

    ./networking.nix
    ./security.nix
  ];

  services = {
    # Bluetooth
    blueman.enable = true; 
    
    # Firmware manager
    fwupd.enable = true; 
    
    # Automount / remote file managing
    gvfs.enable = true; 
    
    # Open fprintd-client
    open-fprintd.enable = true; 
    
    # Python validity for fingerprint authentication
    python-validity.enable = true; 
    
    # X server - mainly for sddm display manager
    xserver = {
      enable = true;
      displayManager.sddm = {
        enable = true;
        theme = "${ import ./sddm.nix { inherit pkgs; } }";
      };
      autorun = true;
      libinput.enable = true;
    };
    
    # Gnome keyring for different applications
    gnome.gnome-keyring.enable = true;

    # Thundrebolt configuration service
    hardware.bolt.enable = true;

    # Pipewire for sound configuration
    pipewire = {
      enable = true;
      alsa.enable = true;
      alsa.support32Bit = true;
      pulse.enable = true;
      jack.enable = true;
    };

  };
  
}

