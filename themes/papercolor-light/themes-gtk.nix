{ config, pkgs, ... }:

{
  # Path to `gtk-2.0/gtkrc`:
  environment.variables.GTK2_RC_FILES = "$HOME/.config/gtk-2.0/gtkrc:$GTK2_RC_FILES";
  # Disable the default use of client-side decorations on GTK windows:
  environment.variables.GTK_CSD = "0";
  # Disable overlay scrollbars:
  environment.variables.GTK_OVERLAY_SCROLLING = "0";

  # Enable GTK applications to load SVG icons:
  services.xserver.gdk-pixbuf.modulePackages = [ pkgs.librsvg ];

  environment.systemPackages = with pkgs; [
    gtk-engine-murrine # a very flexible theme engine
    gtk_engines # theme engines for GTK 2
    libsForQt5.breeze-gtk # Breeze widget theme for GTK 2 and 3
  ];
}
