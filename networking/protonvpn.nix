{ config, pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    protonvpn-gui # linux GUI for ProtonVPN, written in Python
  ];
}
