{ config, pkgs, ... }:

{

  programs.vscode = {
    enable = true;
    package = pkgs.vscodium;
    extensions = with pkgs.vscode-extensions; [
      bbenoist.nix
      llvm-vs-code-extensions.vscode-clangd
      catppuccin.catppuccin-vsc
    ];
  };

}
