{ config, host, user, pkgs, pkgs-unstable, noctalia, nix-flatpak, nixcord, sops-nix, ... }:

{
  home.username = user;
  home.homeDirectory = "/home/${user}";
  home.stateVersion = "25.11"; # Do not touch.

  imports = [
    ./home/noctalia/noctalia.nix
    # ./home/symlinks.nix
    ./home/pkgs.nix
    ./home/shell.nix
    ./home/nixcord.nix
    ./home/git.nix
    ./home/ssh.nix
    ./home/configs/kitty.nix
    noctalia.homeModules.default
    nix-flatpak.homeManagerModules.nix-flatpak
    nixcord.homeModules.nixcord
    sops-nix.homeManagerModules.sops
  ];

  programs.home-manager.enable = true;
}
