{ config, pkgs, ... }:

{
  # Enable the X server:
  services.xserver.enable = true;
  # Update the DBus activation environment after launching the desktop manager:
  services.xserver.updateDbusEnvironment = true;


  environment.systemPackages = with pkgs; [
    arandr # a simple visual front end for XRandR
    xclip # tool to access the X clipboard from a console application
    xinput_calibrator # a generic touchscreen calibration program for X.Org
    xorg.setxkbmap # set keymaps, layouts, and options via the X Keyboard Extension (XKB)
    xorg.xdpyinfo # display information utility for X
    xorg.xev # X event monitor
    xorg.xinput # utility to configure and test XInput devices
    xorg.xkill # utility to forcibly terminate X11 clients
    xorg.xmodmap # utility for modifying keymaps and pointer button mappings in X
    xorg.xprop # command line tool to display and/or set window and font properties of an X server
    xorg.xrandr # command line interface to X11 Resize, Rotate, and Reflect (RandR) extension
    xorg.xset # user preference utility for X
    xorg.xwininfo # utility to print information about windows on an X server
    wmctrl # CLI tool to interact with EWMH/NetWM compatible X Window Managers
  ];
}
