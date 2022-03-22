{ config, pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    wineWowPackages.stagingFull # an Open Source implementation of the Windows API on top of X, OpenGL, and Unix (with staging patches)
  ];
}
