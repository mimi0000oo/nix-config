
{ pkgs }:

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

  }
