{ config, pkgs, ... }:

{
  imports = [
    ./desktop-environment/core-packages/archivers.nix
    ./desktop-environment/core-packages/fs-tools.nix
    ./desktop-environment/core-packages/info-tools.nix
    ./desktop-environment/core-packages/nano.nix
    ./desktop-environment/core-packages/network-tools.nix
    ./desktop-environment/core-packages/nnn.nix
    ./desktop-environment/core-packages/text-tools.nix

    ./desktop-environment/core-services/gnupg.nix
    ./desktop-environment/core-services/picom.nix

    ./desktop-environment/scripts/ld-export-xdg-user-vars.nix
    ./desktop-environment/scripts/ld-link-shared-dotfiles.nix

    ./desktop-environment/console.nix
    ./desktop-environment/dependencies.nix
    ./desktop-environment/fish.nix
    ./desktop-environment/fonts.nix
    ./desktop-environment/leftwm.nix
    ./desktop-environment/lightdm.nix
    ./desktop-environment/mimeapps.nix
    ./desktop-environment/sh-aliases.nix
    ./desktop-environment/themes-gtk.nix
    ./desktop-environment/themes-qt.nix
    ./desktop-environment/xserver.nix
  ];

  # List of directories to be symlinked in `/run/current-system/sw`:
  environment.pathsToLink = [
    "/share" # TODO: `https://github.com/NixOS/nixpkgs/issues/47173`
  ];

  # A set of environment variables used in the global environment.
  # These variables will be set on shell initialisation (e.g. in `/etc/profile`).
  # The value of each variable can be either a string or a list of strings.
  # The latter is concatenated, interspersed with colon characters.
  environment.variables.BROWSER = "firefox";
  environment.variables.EDITOR = "nano";
  environment.variables.TERMINAL = "alacritty";
  environment.variables.XDG_MENU_PREFIX = "lxqt-";
  environment.variables.XDG_CURRENT_DESKTOP = "LXQt";

  environment.systemPackages = with pkgs; [
    alacritty # a cross-platform, GPU-accelerated terminal emulator
    arandr # a simple visual front end for XRandR
    brightnessctl # this program allows you read and control device brightness
    delta # a syntax-highlighting pager for git
    eww # ElKowars wacky widgets
    featherpad # lightweight Qt5 Plain-Text Editor for Linux
    firefox-bin # Mozilla Firefox, free web browser (binary package)
    git # distributed version control system
    gitg # GNOME GUI client to view git repositories
    keepassxc # offline password manager with many features
    libsForQt5.okular # KDE document viewer
    lxqt.lximage-qt # the image viewer and screenshot tool for lxqt
    lxqt.lxqt-archiver # archive tool for the LXQt desktop environment
    lxqt.lxqt-notificationd # the LXQt notification daemon
    lxqt.lxqt-policykit # the LXQt PolicyKit agent
    lxqt.pavucontrol-qt # a Pulseaudio mixer in Qt (port of pavucontrol)
    lxqt.pcmanfm-qt # file manager and desktop icon manager (Qt port of PCManFM and libfm)
    lxqt.qlipper # cross-platform clipboard history applet
    lxqt.qps # Qt based process manager
    lxqt.screengrab # crossplatform tool for fast making screenshots
    procs # a modern replacement for ps written in Rust
    speedcrunch # a fast power user calculator
    tealdeer # a very fast implementation of tldr in Rust
    xidlehook # xautolock rewrite in Rust, with a few extra features
  ];
}
