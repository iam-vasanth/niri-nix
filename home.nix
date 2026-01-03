{ config, host, user, pkgs, pkgs-unstable, noctalia, ... }:

{
  home.username = user;
  home.homeDirectory = "/home/${user}";
  home.stateVersion = "25.11"; # Do not touch.

  imports = [
    ./home/noctalia.nix
    ./home/symlinks.nix
    ./home/shell.nix
    noctalia.homeModules.default
  ];

  programs.home-manager.enable = true;
}
