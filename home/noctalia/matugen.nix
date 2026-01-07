{ config, pkgs, ... }:

{
  programs.noctalia-shell = {
    enable = true;
    settings = {
      templates = {
        enableUserTemplates = true;
      };
    };
    user-templates = {
      templates = {
        starship = {
          input_path = "~/niri-nix/configs/starship/starship-matugen.toml";
          output_path = "~/.config/starship/starship.toml";
        };
      };
    };
  };
}
