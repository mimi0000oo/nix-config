{ config, pkgs, ... }: 

let 
  sddmTheme =
    pkgs.stdenv.mkDerivation {
      name = "sddm-theme";
      src = pkgs.fetchFromGitHub {
        owner = "Keyitdev";
        repo = "sddm-astronaut-theme";
        rev = "468a100460d5feaa701c2215c737b55789cba0fc";
        sha256 = "L+5xoyjX3/nqjWtMRlHR/QfAXtnICyGzxesSZexZQMA=";
      };
      installPhase = ''
        mkdir -p $out
        cp -R ./* $out/
      '';
    };
in 

{
  
  services = {

    automatic-timezoned.enable = true;
    
    blueman.enable = true; 
    
    fwupd.enable = true; 
    
    gvfs.enable = true; 
    
    hardware.bolt.enable = true;
    
    gnome.gnome-keyring.enable = true;
    
    pipewire = {
      enable = true;
      alsa.enable = true;
      alsa.support32Bit = true;
      pulse.enable = true;
      jack.enable = true;
    };
    printing.enable = true;

    thermald.enable = true;
    tlp = {
      enable = true;
      settings = {
        CPU_SCALING_GOVERNOR_ON_AC = "performance";
        CPU_SCALING_GOVERNOR_ON_BAT = "powersave";

        CPU_ENERGY_PERF_POLICY_ON_BAT = "power";
        CPU_ENERGY_PERF_POLICY_ON_AC = "performance";
      };
    };

    # udisks2.enable = true;

    xserver = {
      enable = true;
      displayManager.sddm = {
        enable = true;
        theme = "${sddmTheme}";
        autoNumlock = true;
      };
      autorun = true;
      libinput.enable = true;
    };

    open-fprintd.enable = true;
    python-validity.enable = true;

  };

}