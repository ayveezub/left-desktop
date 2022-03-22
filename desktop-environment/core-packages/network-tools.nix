{ config, pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    ddgr # search DuckDuckGo from the terminal
    inetutils # collection of common network programs
    nmap # free and open source utility for network discovery and security auditing
    sipcalc # advanced console ip subnet calculator
    transmission-qt # a fast, easy and free BitTorrent client
  ];
}
