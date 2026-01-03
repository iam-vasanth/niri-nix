{ ... }:

{
  home.sessionVariables = {
    EDITOR = "neovim";
  };

  # Bash config
  programs.bash = {
    enable = true;
    shellAliases = {
      "ll" = "ls -alh";
      ".." = "cd ..";
      rebuild = "sudo nixos-rebuild switch --impure --flake ~/niri-nix";
      flakeu  = "nix flake update --flake ~/niri-nix";
      hupdate = "home-manager switch --impure --flake ~/niri-nix";
      "gs" = "git status";
      };
  };
}