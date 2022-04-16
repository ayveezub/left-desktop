{ config, pkgs, ... }:

{
  # Whether to enable Upower, a DBus service that provides power management support to applications:
  services.upower.enable = config.powerManagement.enable;
}
