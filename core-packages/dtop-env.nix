{ config, pkgs, ... }:

{
  # List of directories to be symlinked in `/run/current-system/sw`:
  environment.pathsToLink = [
    "/share" # FIXME: modules should link subdirs of `/share` rather than relying on this
  ];

  # Open With dialog window support for PCManFM-QT (with lxmenu-data):
  environment.variables.XDG_MENU_PREFIX = "lxde-";
  environment.variables.XDG_CURRENT_DESKTOP = "LXDE";


  environment.systemPackages = with pkgs; [
    alacritty # a cross-platform, GPU-accelerated terminal emulator
    haskellPackages.greenclip # simple clipboard manager to be integrated with rofi
    keepassxc # offline password manager with many features
    lxqt.lximage-qt # the image viewer and screenshot tool for lxqt
    lxqt.lxqt-archiver # archive tool for the LXQt desktop environment
    lxqt.lxqt-notificationd # the LXQt notification daemon
    lxqt.lxqt-policykit # the LXQt PolicyKit agent
    lxqt.lxqt-sudo # GUI frontend for sudo/su
    lxqt.pavucontrol-qt # a Pulseaudio mixer in Qt (port of pavucontrol)
    lxqt.pcmanfm-qt # file manager and desktop icon manager (Qt port of PCManFM and libfm)
    lxqt.qps # Qt based process manager
    lxqt.screengrab # crossplatform tool for fast making screenshots
    polybar # a fast and easy-to-use tool for creating status bars
    procs # a modern replacement for ps written in Rust
    rofi # window switcher, run dialog and dmenu replacement
    speedcrunch # a fast power user calculator
    tealdeer # a very fast implementation of tldr in Rust
    xidlehook # xautolock rewrite in Rust, with a few extra features
  ];

  # Dependencies:
  environment.systemPackages = with pkgs; [
    cargo # downloads your Rust project's dependencies and builds your project
    gcc # GNU Compiler Collection, version 10.3.0 (wrapper script)
    isocodes # various ISO codes packaged as XML files
    libappindicator-gtk3 # a library to allow applications to export a menu into the Unity Menu bar
    libappindicator-gtk2 # a library to allow applications to export a menu into the Unity Menu bar
    libhandy # building blocks for modern adaptive GNOME apps
    libnotify # a library that sends desktop notifications to a notification daemon
    lxmenu-data # Freedesktop.org desktop menus for LXDE
    lxqt.libfm-qt # core library of PCManFM-Qt (Qt binding for libfm)
    lxqt.liblxqt # core utility library for all LXQt components
    lxqt.lxqt-build-tools # various packaging tools and scripts for LXQt applications
    pciutils # a collection of programs for inspecting and manipulating configuration of PCI devices
    psmisc # a set of small useful utilities that use the proc filesystem (such as fuser, killall and pstree)
    rustc # Rust Compiler
    shared-mime-info # for `update-mime-database`
  ];
}
