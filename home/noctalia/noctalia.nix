{ config, host, user, pkgs, pkgs-unstable, noctalia, ... }:

{
  imports = [
    ./matugen.nix
  ];

  programs.noctalia-shell.enable = true;
}
