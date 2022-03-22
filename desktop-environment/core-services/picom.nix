{ config, pkgs, ... }:

{
  # Enable Picom as the X.org composite manager:
  services.picom.enable = true;

  services.picom = {
    backend = "glx"; # backend to use: `glx`, `xrender` or `xr_glx_hybrid`
    fade = true; # fade windows in and out
    shadow = false; # draw window shadows
    vSync = true; # enable vertical synchronization
  };
}
