{ config, pkgs, ... }:

{
  # Enable the Qt5 Configuration Tool (qt5ct), a program that allows users to configure Qt5 settings (theme, font, icons, etc.) under desktop environments or window manager without Qt integration:
  programs.qt5ct.enable = true;

  environment.variables.QT_STYLE_OVERRIDE = "kvantum";

  environment.systemPackages = with pkgs; [
    libsForQt5.qtstyleplugin-kvantum # SVG-based Qt5 theme engine plus a config tool and extra themes
  ];
}
