{ config, pkgs, ... }:

{
  # Whether to enable power management.
  # This includes support for suspend-to-RAM and powersave features on laptops.
  powerManagement.enable = true;
}
