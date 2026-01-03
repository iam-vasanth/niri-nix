{ config, host, user, pkgs, pkgs-unstable, noctalia, ... }:

{
  imports =
    [
      /etc/nixos/hardware-configuration.nix
      noctalia.nixosModules.default
      <nixpkgs/nixos/modules/profiles/qemu-guest.nix>
    ];

  services.noctalia-shell.enable = true;

  # Bootloader.
  boot.loader.systemd-boot.enable = true;
  boot.loader.systemd-boot.configurationLimit = 5;
  boot.loader.efi.canTouchEfiVariables = true;

  # Use latest kernel.
  boot.kernelPackages = pkgs.linuxPackages_zen;

  # Kernel params
  boot.consoleLogLevel = 0;
  boot.initrd.verbose = false;
  boot.kernelParams = [
    "quiet"
    "loglevel=3"
    "rd.systemd.show_status=false"
    "rd.udev.log_level=3"
    "udev.log_priority=3"
    "vt.global_cursor_default=0"
  ];

  # Silences systemd logs
  systemd.settings = {
    Manager = {
      ShowStatus = "no";
      DefaultStandardOutput = "null";
    };
  };

  # Enables flakes
  nix.settings.experimental-features = [ "nix-command" "flakes" ];

  # Enables networking
  networking.networkmanager.enable = true;

  # Power profile
  services.tuned.enable = true;
  services.upower.enable = true;

  # Hostname
  networking.hostName = "${host}";

  # Sets your time zone.
  time.timeZone = "Asia/Kolkata";

  # Select internationalisation properties.
  i18n.defaultLocale = "en_IN";
  i18n.extraLocaleSettings = {
    LC_ADDRESS = "en_IN";
    LC_IDENTIFICATION = "en_IN";
    LC_MEASUREMENT = "en_IN";
    LC_MONETARY = "en_IN";
    LC_NAME = "en_IN";
    LC_NUMERIC = "en_IN";
    LC_PAPER = "en_IN";
    LC_TELEPHONE = "en_IN";
    LC_TIME = "en_IN";
  };

  # User account
  users.users.${user} = {
    isNormalUser = true;
    description = "ZORO";
    extraGroups = [ "networkmanager" "wheel" "fuse" "video" ];
  };

  # Enables Niri and polkit
  programs.niri.enable = true;
  security.polkit.enable = true;
  services.greetd = {
    enable = true;
    settings = {
      initial_session = {
        command = "niri-session";
        user = "${user}";
      };
    };
  };
  # services.greetd = {
  #   enable = true;
  #   settings = {
  #     default_session = {
  #       command = "${pkgs.dbus}/bin/dbus-run-session niri-session";
  #       user = "${user}";
  #     };
  #     initial_session = {
  #       command = "${pkgs.dbus}/bin/dbus-run-session niri-session";
  #       user = "${user}";
  #     };
  #   };
  # };

  # services.displayManager.ly.enable = true;

  # Configure keymap in X11
  services.xserver.xkb = {
    layout = "us";
    variant = "";
  };

  # Allow unfree packages
  nixpkgs.config.allowUnfree = true;

  environment.systemPackages = [
  noctalia.packages.${pkgs-unstable.stdenv.hostPlatform.system}.default
  pkgs.neovim
  pkgs.wget
  pkgs.gitFull
  pkgs.zed-editor
  pkgs.alacritty
  pkgs.fuse
  pkgs.fuse3
  pkgs.firefox
  pkgs.nautilus
  pkgs.work-sans
  ];

  fileSystems."/home/zoro/niri-nix" = {
    device = "niri-nix";
    fsType = "virtiofs";
    options = [ "defaults" "nofail" ];
  };

  services.qemuGuest.enable = true;
  services.spice-vdagentd.enable = true;

  # virtualisation.vmware.guest.enable = true;

  # fileSystems."/home/zoro/niri-nix" = {
  #   device = ".host:/niri-nix";
  #   fsType = "fuse./run/current-system/sw/bin/vmhgfs-fuse";
  #   options = [ "uid=1000" "allow_other" "defaults" ];
  #   noCheck = true;
  #   };

  system.stateVersion = "25.11"; # Do not touch this
}
