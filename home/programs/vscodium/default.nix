{ config, pkgs, ... }:

{

  programs.vscode = {
    enable = true;
    package = pkgs.vscodium;
    # userSettings = config.lib.file.mkOutOfStoreSymlink {
    #   "editor.tabSize" = 2;
    #   "window.titleBarStyle" = "custom";
    #   "workbench.colorTheme" = "Catppuccin Mocha";
    # };
    extensions = with pkgs.vscode-extensions; [
      bbenoist.nix
      llvm-vs-code-extensions.vscode-clangd
      catppuccin.catppuccin-vsc
    ];
  };

  home.file = {
    "/home/mimi07/.config/VSCodium/User/settings.json".source = config.lib.file.mkOutOfStoreSymlink "/etc/nixos/home/programs/vscodium/settings.json";
  };

}
