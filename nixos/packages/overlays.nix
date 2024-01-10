{ config, pkgs, ... }: 

{

  nixpkgs.overlays = [
    (self: super: {
      mpv = super.mpv.override {
        scripts = [ 
          self.mpvScripts.uosc
          self.mpvScripts.thumbfast
        ];
      };
    })
  ];


}