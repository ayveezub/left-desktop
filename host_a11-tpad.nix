{ config, pkgs, lib, ... }:

let 
  # Install a package from unstable while remaining on the stable channel:
  # 
  # `sudo nix-channel --add https://nixos.org/channels/nixos-unstable nixos-unstable`
  # `sudo nix-channel --update`
  # 
  unstable = import <nixos-unstable> { config = { allowUnfree = true; }; };

in {
  imports = [
    # Include the results of the hardware scan:
    ./hardware-configuration.nix
    # Applied Left Desktop theme.
    # Warning: will overwrite a previous manual configuration!
    ./themes/papercolor-light.nix

    # Core packages:
    ./core-packages/tools/archive.nix
    ./core-packages/tools/fs.nix
    ./core-packages/tools/img.nix
    ./core-packages/tools/info.nix
    ./core-packages/tools/text.nix
    ./core-packages/tools/web.nix
    ./core-packages/dconf.nix
    ./core-packages/dtop-env.nix
    ./core-packages/git.nix
    ./core-packages/nano.nix
    ./core-packages/nnn.nix

    # Core services:
    ./core-services/gnome-keyring.nix
    ./core-services/gnupg.nix
    ./core-services/gvfs.nix
    ./core-services/picom.nix
    ./core-services/udisks2.nix
    ./core-services/upower.nix
    ./core-services/xserver.nix

    # Extra packages:
    ./extra-packages/tools/dev.nix
    ./extra-packages/tools/diy.nix
    ./extra-packages/tools/media.nix
    #./extra-packages/freelance.nix
    ./extra-packages/games.nix
    ./extra-packages/messengers.nix
    ./extra-packages/obsidian.nix
    ./extra-packages/steam.nix
    #./extra-packages/tor-browser.nix
    ./extra-packages/wine.nix

    # Hardware:
    ./hardware/cpu/intel.nix
    ./hardware/keyboard/pc104_en-ru.nix
    ./hardware/power-management/desktop.nix
    ./hardware/video/intel.nix
    ./hardware/display.nix
    ./hardware/printing.nix
    ./hardware/sound.nix
    ./hardware/touchpad.nix

    # Networking:
    ./networking/firewall.nix
    ./networking/networkmanager.nix
    ./networking/openssh.nix
    ./networking/openvpn.nix
    ./networking/protonvpn.nix

    # System:
    ./system/kernel/dtop.nix
    ./system/scripts/ld-export-xdg-user-vars.nix
    ./system/boot.nix
    ./system/env-vars.nix
    ./system/fish.nix
    ./system/mimeapps.nix
    ./system/nix.nix
    ./system/setup-commands.nix
    ./system/sh-aliases.nix

    # Users:
    ./users/aleksey.nix
    ./users/ksevelyar.nix
  ];

  swapDevices = [ { device = "/var/swapfile"; size = 2048; } ];


  # Define your hostname:
  networking.hostName = "a11-tpad";

  # `nixos-rebuild` for `a11-tpad` machine:
  environment.shellAliases = {
    ld-rb = "sudo nixos-rebuild boot && ld-apply-theme";
    ld-rs = "sudo nixos-rebuild switch && ld-apply-theme";
  };

  # Append entries for other OSs detected by os-prober:
  boot.loader.grub.useOSProber = true;

  # The global useDHCP flag is deprecated, therefore explicitly set to false here.
  # Per-interface useDHCP will be mandatory in the future, so this generated config
  # replicates the default behaviour.
  networking.useDHCP = false;
  networking.interfaces.enp0s25.useDHCP = true;
  networking.interfaces.wlp3s0.useDHCP = true;
  networking.interfaces.wwp0s20u4i6.useDHCP = true;

  # Enable Font/DPI configuration optimized for HiDPI displays:
  hardware.video.hidpi.enable = lib.mkDefault true;


  # Set your time zone:
  time.timeZone = "Europe/Moscow";
  location.latitude = 55.75; # your current latitude, between `-90.0` and `90.0`
  location.longitude = 37.61; # your current longitude, between between `-180.0` and `180.0`

  # Select internationalisation properties:
  i18n.defaultLocale = "en_US.UTF-8";
  i18n.supportedLocales = [ "en_US.UTF-8/UTF-8" "ru_RU.UTF-8/UTF-8" ];


  # Enable the LeftWM Desktop Environment:
  services.xserver.displayManager.lightdm.enable = lib.mkForce true;
  services.xserver.windowManager.leftwm.enable = lib.mkForce true;
  services.xserver.desktopManager.xterm.enable = lib.mkForce false;
  # Graphical session to pre-select in the session chooser (only effective for GDM, LightDM and SDDM).
  # On GDM, LightDM and SDDM, it will also be used as a session for auto-login.
  services.xserver.displayManager.defaultSession = "none+leftwm";


  # If set to `true`, you are free to add new users and groups to the system with the ordinary `useradd` and `groupadd` commands.
  # On system activation, the existing contents of the `/etc/passwd` and `/etc/group` files will be merged with the contents generated from the `users.users` and `users.groups` options.
  # The initial password for a user will be set according to `users.users`, but existing passwords will not be changed.
  #
  # If set to `false`, the contents of the user and group files will simply be replaced on system activation.
  # This also holds for the user passwords; all changed passwords will be reset according to the `users.users` configuration on activation.
  users.mutableUsers = lib.mkForce true;

  # This value determines the NixOS release from which the default
  # settings for stateful data, like file locations and database versions
  # on your system were taken. It‘s perfectly fine and recommended to leave
  # this value at the release version of the first install of this system.
  # Before changing this value read the documentation for this option
  # (e.g. man configuration.nix or on https://nixos.org/nixos/options.html).
  system.stateVersion = "21.11"; # Did you read the comment?
}
