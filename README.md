# My personal nix-config for NixOS

## The project is mainly for personal use, but feel free to take as much inspiration as you want!

___

### To build my configuration
```bash
cd /etc/
sudo git clone https://github.com/mimi0000oo/nix-config.git
sudo mv ./nixos ./nixos.bak
sudo mv ./nix-config ./nixos
cd nixos
sudo nixos-generate-config
sudo nixos-rebuild switch --flake .
```
### ⚠️ The script is made to backup your current nixos configuration in `/etc/nixos.bak/`, but make sure you have your configs saved/backed-up!

___

![Alt text](./screenshot.png?raw=true "There was a screenshot :(")
