{ config, pkgs, ... }:

{
  imports = [
    ./extra-packages/dev-tools.nix
    ./extra-packages/games.nix
    ./extra-packages/media-tools.nix
    ./extra-packages/messengers.nix
    ./extra-packages/obsidian.nix
    ./extra-packages/spotify.nix
    ./extra-packages/steam.nix
    #./extra-packages/tor-browser.nix
    #./extra-packages/upwork.nix
    ./extra-packages/wine.nix

    ./hardware/boot-grub.nix
    ./hardware/cpu-intel.nix
    ./hardware/keyboard-pc104_en-ru.nix
    ./hardware/printing-cups.nix
    ./hardware/sound-pipewire.nix
    ./hardware/touchpad-libinput.nix
    ./hardware/video-nvidia-legacy_470.nix

    ./networking/firewall.nix
    ./networking/networkmanager.nix
    ./networking/openssh.nix
    ./networking/openvpn-surfshark.nix

    ./desktop-environment.nix
    
    # Include the results of the hardware scan:
    ./hardware-configuration.nix

    ./kernel_less-swapping.nix

    ./nix.nix

    ./users.nix
  ];

  # Define your hostname:
  networking.hostName = "a11-dtop";

  # Set your time zone:
  time.timeZone = "Europe/Moscow";
  location.latitude = 55.75; # your current latitude, between `-90.0` and `90.0`
  location.longitude = 37.61; # your current longitude, between between `-180.0` and `180.0`

  # The global useDHCP flag is deprecated, therefore explicitly set to false here.
  # Per-interface useDHCP will be mandatory in the future, so this generated config
  # replicates the default behaviour.
  networking.useDHCP = false;
  networking.interfaces.enp102s0.useDHCP = true;

  # Select internationalisation properties:
  i18n.defaultLocale = "en_US.UTF-8";
  i18n.supportedLocales = [ "en_US.UTF-8/UTF-8" "ru_RU.UTF-8/UTF-8" ];

  # This value determines the NixOS release from which the default
  # settings for stateful data, like file locations and database versions
  # on your system were taken. It‘s perfectly fine and recommended to leave
  # this value at the release version of the first install of this system.
  # Before changing this value read the documentation for this option
  # (e.g. man configuration.nix or on https://nixos.org/nixos/options.html).
  system.stateVersion = "21.11"; # Did you read the comment?
}
