{ config, pkgs, ... }:

{
  # Enable GNOME Keyring daemon, a service designed to take care of the user's security credentials, such as user names and passwords:
  services.gnome.gnome-keyring.enable = true;
}
