{ config, pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    delta # a syntax-highlighting pager for git
    git # distributed version control system
    gitg # GNOME GUI client to view git repositories
  ];
}
