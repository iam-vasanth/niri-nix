{ config, host, user, pkgs, pkgs-unstable, noctalia, nix-flatpak, ... }:

{
  home.username = user;
  home.homeDirectory = "/home/${user}";
  home.stateVersion = "25.11"; # Do not touch.

  imports = [
    ./home/noctalia.nix
    # ./home/symlinks.nix
    ./home/pkgs.nix
    ./home/shell.nix
    noctalia.homeModules.default
    nix-flatpak.homeManagerModules.nix-flatpak
  ];

  programs.home-manager.enable = true;
}
