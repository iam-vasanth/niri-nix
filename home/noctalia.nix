{ config, host, user, pkgs, pkgs-unstable, noctalia ... }:

{

  programs.noctalia-shell = {
      enable = true;
  };
}