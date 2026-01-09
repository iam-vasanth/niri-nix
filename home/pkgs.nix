{ pkgs, pkgs-unstable, ... }:

{
  home.packages = [
    pkgs.kitty
    pkgs.starship
    pkgs.teams-for-linux
    # pkgs.spotify-player
    # Fish dependencies
    pkgs.fzf # fish : fzf-fish and forgit plugins
    pkgs.grc # fish : grc plugin
    pkgs.nix-your-shell  # fish optional : Nix develop ~/home/configs/fish.nix line:44
    pkgs.nixd # Zed-Editor : language server
    # sops-nix
    pkgs.sops
    pkgs.age
    pkgs.ssh-to-age
  ];

  services.flatpak = {
  enable = true;
  packages = [
    { appId = "app.zen_browser.zen"; origin = "flathub"; }
    { appId = "com.spotify.Client"; origin = "flathub"; }
    { appId = "de.haeckerfelix.Fragments"; origin = "flathub"; }
    { appId = "com.github.tchx84.Flatseal"; origin = "flathub"; }
    { appId = "org.videolan.VLC"; origin = "flathub"; }
    { appId = "io.gitlab.adhami3310.Impression"; origin = "flathub"; }
    { appId = "com.ranfdev.DistroShelf"; origin = "flathub"; }
    { appId = "io.github.flattool.Warehouse"; origin = "flathub"; }
    { appId = "com.stremio.Stremio"; origin = "flathub"; }
    # { appId = "flathub:com.ml4w.dotfilesinstaller"; origin = "flathub" } # For dotfiles management
  ];
  };
}
