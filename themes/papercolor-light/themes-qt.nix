{ config, pkgs, ... }:

{
  # Enable the Qt5 Configuration Tool (qt5ct), a program that allows users to configure Qt5 settings (theme, font, icons, etc.) under desktop environments or window manager without Qt integration:
  programs.qt5ct.enable = true;

  environment.systemPackages = with pkgs; [
    libsForQt5.breeze-icons # Breeze icon theme
    libsForQt5.breeze-qt5 # Breeze visual style for the Plasma Desktop
  ];
}
