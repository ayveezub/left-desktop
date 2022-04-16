{ config, pkgs, ... }:

{
  # Enable Udisks, a DBus service that allows applications to query and manipulate storage devices:
  services.udisks2.enable = true;
}
