{ config, pkgs, ... }:

{
  # Enable GVfs, a userspace virtual filesystem:
  services.gvfs.enable = true;
}
