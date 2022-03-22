{ config, pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    unstable.spotify # play music from the Spotify music service
  ];
}
