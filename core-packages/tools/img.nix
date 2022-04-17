{ config, pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    feh # a light-weight image viewer
    imagemagick # a software suite to create, edit, compose, or convert bitmap images
    viu # a command-line application to view images from the terminal written in Rust


    # Dependencies:
    cairo # a 2D graphics library with support for multiple output devices
    hicolor-icon-theme # default fallback theme used by implementations of the icon theme spec
  ];
}
