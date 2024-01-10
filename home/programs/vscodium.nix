{ config, pkgs, ... }:

{

  programs.vscode = {
    enable = true;
    package = pkgs.vscodium;
    userSettings = {
    #  "clangd.path" = "/home/mimi07/.config/VSCodium/User/globalStorage/llvm-vs-code-extensions.vscode-clangd/install/17.0.3/clangd_17.0.3/bin/clangd";
     "editor.tabSize" = 2;
     "window.titleBarStyle" = "custom";
     "workbench.colorTheme" = "Catppuccin Mocha";
    };
    extensions = with pkgs.vscode-extensions; [
      bbenoist.nix
      llvm-vs-code-extensions.vscode-clangd
      catppuccin.catppuccin-vsc
    ];
  };

}
