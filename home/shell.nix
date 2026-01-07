{ config, user, pkgs, ... }:

{
  home.sessionVariables = {
    EDITOR = "nvim";
  };

  programs.kitty = {
    enable = true;
    settings = {
      shell = "fish";
    };
    shellIntegration = {
      enableFishIntegration = true;
    };
  };

  programs.fish = {
    enable = true;

    # Disable default greeting
    interactiveShellInit = ''
      set fish_greeting
      nix-your-shell fish | source
    '';

    # Aliases
    shellAliases = {
      ll = "ls -lAh";
      la = "ls -A";
      tree = "ls --tree";

      # Git
      g = "git";
      gs = "git status";
      ga = "git add";
      gc = "git commit -v";
      gco = "git checkout";
      gp = "git push";
      gl = "git pull";
      gd = "git diff";
      glog = "git log --oneline --graph --decorate";

      # Nix
      rebuild = "sudo nixos-rebuild switch --flake .#";
      hms = "home-manager switch --flake .#";
      ngc = "nix-collect-garbage -d";
      nsearch = "nix search nixpkgs";

      # Tools
      grep = "grep --color=auto";
      diff = "diff --color=auto";
      ip = "ip --color=auto";

      # Containers
      d = "docker";
      dc = "docker compose";
      dcu = "docker compose up -d";
      dcd = "docker compose down";

      ports = "ss -tuln";
      myip = "curl ifconfig.me";
    };

    plugins = [
      { name = "forgit"; src = pkgs.fishPlugins.forgit.src; }         # Fuzzy git interactive
      { name = "fzf-fish"; src = pkgs.fishPlugins.fzf-fish.src; }     # fzf for history/files/git
      { name = "done"; src = pkgs.fishPlugins.done.src; }             # Notifications for long commands
      { name = "autopair"; src = pkgs.fishPlugins.autopair.src; }     # Auto-close brackets/quotes
      { name = "grc"; src = pkgs.fishPlugins.grc.src; }               # Colorize command output
    ];
  };

  # Starship setup
  programs.starship = {
    enable = true;
    enableFishIntegration = true;
    # enableTransience = false;
  };

    # Sets up XDG folders
    xdg.userDirs = {
      enable = true;
      createDirectories = true;
      download = "${config.home.homeDirectory}/Downloads";
      documents = "${config.home.homeDirectory}/Documents";
      pictures = "${config.home.homeDirectory}/Pictures";
      videos = "${config.home.homeDirectory}/Videos";
      music = "${config.home.homeDirectory}/Music";
      publicShare = null;
      templates = null;
      desktop = null;
    };
    # Adds bookmarks to folders to nautilus bookmarks
    home.file = {
      ".config/gtk-3.0/bookmarks".text = ''
        file://${config.home.homeDirectory}/Downloads
        file://${config.home.homeDirectory}/Documents
        file://${config.home.homeDirectory}/Projects
        file://${config.home.homeDirectory}/Pictures
        file://${config.home.homeDirectory}/Videos
        file://${config.home.homeDirectory}/Music
      '';
    };
    # Desktop Entry to change Equibop icon
    xdg.desktopEntries = {
      equibop = {
        name = "Equibop";
        icon = "/home/zoro/Pictures/Wallpapers/icons/equibop.png";
        exec = "equibop %U";
      };
    };
}
