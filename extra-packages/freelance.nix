{ config, pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    unstable.upwork # online freelancing platform desktop application for time tracking
  ];
}
