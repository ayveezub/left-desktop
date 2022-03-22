{ config, lib, ... }:

{
  # Enable leftwm:
  services.xserver.windowManager.leftwm.enable = lib.mkForce true;

  # Graphical session to pre-select in the session chooser (only effective for GDM, LightDM and SDDM).
  # On GDM, LightDM and SDDM, it will also be used as a session for auto-login.
  services.xserver.displayManager.defaultSession = "none+leftwm";

  # Disable a xterm terminal as a desktop manager:
  services.xserver.desktopManager.xterm.enable = lib.mkForce false;
}
