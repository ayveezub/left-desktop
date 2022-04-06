{ config, pkgs, ... }:

{
  # Disable the default use of client-side decorations on GTK windows:
  environment.variables.GTK_CSD = "0";
  # Disable overlay scrollbars:
  environment.variables.GTK_OVERLAY_SCROLLING = "0";

  # Enable GTK applications to load SVG icons:
  services.xserver.gdk-pixbuf.modulePackages = [ pkgs.librsvg ];

  environment.systemPackages = with pkgs; [
    gnome.adwaita-icon-theme
    gnome.gnome-themes-extra
    gtk-engine-murrine # a very flexible theme engine
    gtk_engines # theme engines for GTK 2
    lxappearance # lightweight program for configuring the theme and fonts of gtk applications
  ];
}
