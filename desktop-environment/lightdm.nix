{ config, pkgs, lib, ... }:

{
  # Enable lightdm as the display manager:
  services.xserver.displayManager.lightdm.enable = lib.mkForce true;

  # The background image or color to use:
  services.xserver.displayManager.lightdm = {
    background = pkgs.nixos-artwork.wallpapers.simple-dark-gray-bottom.gnomeFilePath;
  };

  # Enable lightdm-gtk-greeter as the lightdm greeter:
  services.xserver.displayManager.lightdm.greeters.gtk.enable = true;

  services.xserver.displayManager.lightdm.greeters.gtk = {
    cursorTheme.name = "Adwaita"; # name of the cursor theme to use
    cursorTheme.package = pkgs.gnome.adwaita-icon-theme; # the package path that contains the cursor theme given in the name option
    cursorTheme.size = 16; # size of the cursor theme to use
    iconTheme.name = "Adwaita"; # name of the icon theme to use
    iconTheme.package = pkgs.gnome.adwaita-icon-theme; # the package path that contains the icon theme given in the name option
    theme.name = "Adwaita"; # name of the theme to use for the lightdm-gtk-greeter
    theme.package = pkgs.gnome.gnome-themes-extra; # the package path that contains the theme given in the name option
  };
}
