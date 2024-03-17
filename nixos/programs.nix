{ inputs, config, pkgs, spicetify-nix, ... }: 
let
  spicePkgs = inputs.spicetify-nix.packages.${pkgs.system}.default;
in
{

  # import the flake's module for your system
  imports = [ inputs.spicetify-nix.nixosModule ];

  # # configure spicetify :)
  # programs.spicetify = 
  #   {
  #   enable = true;
  #   theme = spicePkgs.themes.catppuccin;
  #   colorScheme = "mocha";

  #   enabledExtensions = with spicePkgs.extensions; [
  #     fullAppDisplay
  #     adblock
  #     history
  #     popupLyrics
  #     loopyLoop
  #   ];

  #   enabledCustomApps = with spicePkgs.apps; [
  #     # lyrics-plus
  #     marketplace
  #   ];
  # };


  programs = {
    # Enable thunar file manager with plugins
    thunar = {
      enable = true;
      plugins = with pkgs.xfce; [
        thunar-archive-plugin
        thunar-volman
        xfconf
      ];
    };

    hyprland.enable = true;

    neovim = {
      enable = true;
      defaultEditor = true;
    };

    spicetify = {
      enable = true;
      theme = spicePkgs.themes.catppuccin;
      colorScheme = "mocha";

      enabledExtensions = with spicePkgs.extensions; [
        fullAppDisplay
        adblock
        history
        popupLyrics
        loopyLoop
      ];

      enabledCustomApps = with spicePkgs.apps; [
        # lyrics-plus
        marketplace
      ];
    };

  };

}