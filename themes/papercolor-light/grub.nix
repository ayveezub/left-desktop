{ config, pkgs, lib, ... }:

{
  # Enable the GNU GRUB boot loader:
  boot.loader.grub.enable = true;

  # Whether GRUB should be built with EFI support.
  boot.loader.grub.efiSupport = lib.mkForce true;

  # Whether to invoke `grub-install` with `--removable`.
  #
  # If you turn this feature on, GRUB will install itself in a special location within `efiSysMountPoint` (namely `EFI/boot/boot$arch.efi`) which the firmwares are hardcoded to try first, regardless of NVRAM EFI variables.
  #
  # Turn this on if:
  # - You are installing NixOS and want it to boot in UEFI mode, but you are currently booted in legacy mode.
  # - You want to make a drive that will boot regardless of the NVRAM state of the computer (like a USB "removable" drive).
  # - You simply dislike the idea of depending on NVRAM state to make your drive bootable.
  boot.loader.grub.efiInstallAsRemovable = lib.mkForce true;

  # Define on which hard drive you want to install Grub:
  boot.loader.grub.device = "nodev"; # or `nodev` for efi only

  boot.loader.grub = {
    backgroundColor = "#005F87"; # background color to be used for GRUB to fill the areas the image isn't filling
    configurationLimit = 11; # maximum of configurations in boot menu (GRUB has problems when there are too many entries)
    default = "0" # index of the default menu item to be booted (can also be set to "saved", which will make GRUB select the menu item that was used at the last boot)
    memtest86.enable = true; # Make Memtest86+ (or MemTest86 if EFI support is enabled), available from the GRUB boot menu
    theme = pkgs.nixos-grub2-theme; # Grub theme to be used
    timeout = 5; # alias of `boot.loader.timeout`
    #useOSProber = true; # append entries for other OSs detected by os-prober
  };
}
