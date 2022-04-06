{ config, pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    cairo # a 2D graphics library with support for multiple output devices
    cargo # downloads your Rust project's dependencies and builds your project
    coreutils # the basic file, shell and text manipulation utilities of the GNU operating system
    gcc # GNU Compiler Collection, version 10.3.0 (wrapper script)
    hicolor-icon-theme # default fallback theme used by implementations of the icon theme spec
    imagemagick # a software suite to create, edit, compose, or convert bitmap images
    isocodes # various ISO codes packaged as XML files
    libappindicator-gtk3 # a library to allow applications to export a menu into the Unity Menu bar
    libappindicator-gtk2 # a library to allow applications to export a menu into the Unity Menu bar
    libhandy # building blocks for modern adaptive GNOME apps
    libnotify # a library that sends desktop notifications to a notification daemon
    lxmenu-data # Freedesktop.org desktop menus for LXDE
    lxqt.libfm-qt # core library of PCManFM-Qt (Qt binding for libfm)
    lxqt.liblxqt # core utility library for all LXQt components
    lxqt.lxqt-build-tools # various packaging tools and scripts for LXQt applications
    ncurses # free software emulation of curses in SVR4 and more
    ntfs3g # FUSE-based NTFS driver with full write support
    pango # a library for laying out and rendering of text, with an emphasis on internationalization
    papirus-icon-theme
    pciutils # a collection of programs for inspecting and manipulating configuration of PCI devices
    pmount # mount removable devices as normal user
    psmisc # a set of small useful utilities that use the proc filesystem (such as fuser, killall and pstree)
    rustc # Rust Compiler
    shared-mime-info # for `update-mime-database`
    sshfs # FUSE-based filesystem that allows remote filesystems to be mounted over SSH
    xdg-user-dirs # update user dirs as described in `http://freedesktop.org/wiki/Software/xdg-user-dirs/`
  ];
}
