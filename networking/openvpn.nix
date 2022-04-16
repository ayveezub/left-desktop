{ config, pkgs, lib, ... }:

{
  services.openvpn.servers = {
    de-shark = {
      config = '' config /etc/nixos/networking/openvpn_surfshark/de-ber.prod.surfshark.com_udp.ovpn '';
      autoStart = lib.mkDefault false;
      updateResolvConf = true;
    };
    fr-shark = {
      config = '' config /etc/nixos/networking/openvpn_surfshark/fr-par.prod.surfshark.com_udp.ovpn '';
      autoStart = lib.mkDefault false;
      updateResolvConf = true;
    };
    uk-shark = {
      config = '' config /etc/nixos/networking/openvpn_surfshark/uk-lon.prod.surfshark.com_udp.ovpn '';
      autoStart = lib.mkDefault false;
      updateResolvConf = true;
    };
  };
}
