{ config, pkgs, lib, ... }:

{
  boot.supportedFilesystems = [ "ntfs" ]; # names of supported filesystem types

  boot.cleanTmpDir = true; # whether to delete all files in `/tmp` during boot
  
  boot.tmpOnTmpfs = true; # whether to mount a tmpfs on `/tmp` during boot
  boot.tmpOnTmpfsSize = "50%"; # size of tmpfs in percentage (percentage is defined by systemd)

  # Whether the installation process is allowed to modify EFI boot variables.
  boot.loader.efi.canTouchEfiVariables = lib.mkForce false;
}
