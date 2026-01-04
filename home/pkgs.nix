{ pkgs, pkgs-unstable, ... }:

{
  home.packages = [
    pkgs.kitty
    pkgs.spotify-player
    pkgs.sops
    pkgs.age
    pkgs.ssh-to-age
    pkgs.teams-for-linux
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
