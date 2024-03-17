{ config, pkgs, lib, ... }: 

{

  nix = {
    settings.experimental-features = [ "nix-command" "flakes" ];
    optimise.automatic = true;
  };

  nixpkgs = {
    config = {
      allowUnfreePredicate = pkg: builtins.elem (lib.getName pkg) [
        "anydesk"
        "corefonts"
        "discord"
        "libsciter"
        "spotify"
        "unrar"
        "obsidian"
        "android-studio-stable"
      ];
      permittedInsecurePackages = [
        "electron-25.9.0" # obsidian
      ];
    };
    overlays = [
      (self: super: {
        mpv = super.mpv.override {
          scripts = [ 
            self.mpvScripts.uosc
            self.mpvScripts.thumbfast
          ];
        };
      })
    ];
  };

}