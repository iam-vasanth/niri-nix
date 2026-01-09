{ config, host, user, pkgs, pkgs-unstable, noctalia, ... }:

{
  imports = [
    ./configs/fish.nix
    ./configs/kitty.nix
    ./configs/starship.nix
    ./configs/zed-editor.nix
  ];
}
