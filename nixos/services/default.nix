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
        autoNumlock = true;
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

    # Automatic timezone?
    automatic-timezoned.enable = true;

  };

  systemd = {
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
  
}

