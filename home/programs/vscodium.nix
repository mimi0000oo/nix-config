{ config, pkgs, ... }:

{

  programs.vscode = {
    package = pkgs.vscodium;
    userSettings = {
      window.titleBarStyle = "custom";
      editor.tabSize = 2;
    };
  };

}
