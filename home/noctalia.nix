{ config, host, user, pkgs, pkgs-unstable, noctalia, ... }:

{
  imports = [

    # General, User Interface, Notifications(Sounds), Screen Recorder.
    ./noctalia/general.nix

    # Bar and Dock
    ./noctalia/bar.nix

    ./noctalia/colors.nix
    ./noctalia/components.nix
    ./noctalia/services.nix
    ./noctalia/system.nix
    ./noctalia/misc.nix
    ./noctalia/userTemplates.nix
  ];

  programs.noctalia-shell.enable = true;
  # programs.noctalia-shell.systemd.enable = true;
}
