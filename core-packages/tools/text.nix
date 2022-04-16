{ config, pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    djvulibre # the big set of CLI tools to make/modify/optimize/show/export DJVU files
    dos2unix # convert text files with DOS or Mac line breaks to Unix line breaks and vice versa
    featherpad # lightweight Qt5 Plain-Text Editor for Linux
    html2text # convert HTML to plain text
    libsForQt5.okular # KDE document viewer
  ];

  # Dependencies:
  environment.systemPackages = with pkgs; [
    ncurses # free software emulation of curses in SVR4 and more
    pango # a library for laying out and rendering of text, with an emphasis on internationalization
  ];
}
