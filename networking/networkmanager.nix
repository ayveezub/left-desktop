{ config, ... }:

{
  # Use NetworkManager to obtain an IP address and other configuration for all network interfaces that are not manually configured.
  # If enabled, a group `networkmanager` will be created.
  # Add all users that should have permission to change network settings to this group.
  networking.networkmanager.enable = true;
}
