{ config, pkgs, lib, ... }:

{
  # Fix "Openvpn : update_resolv.conf not found":
  environment.etc.openvpn.source = "${pkgs.update-resolv-conf}/libexec/openvpn";

  environment.systemPackages = with pkgs; [ openvpn ];

  services.openvpn.servers = {
    uk-shark = {
      config = '' config /etc/nixos/services/vpn/surfshark/uk-lon.prod.surfshark.com_udp.ovpn '';
      autoStart = false;
      updateResolvConf = true;
    };
    de-shark = {
      config = '' config /etc/nixos/services/vpn/surfshark/de-ber.prod.surfshark.com_udp.ovpn '';
      autoStart = false;
      updateResolvConf = true;
    };
    fr-shark = {
      config = '' config /etc/nixos/services/vpn/surfshark/fr-par.prod.surfshark.com_udp.ovpn '';
      autoStart = false;
      updateResolvConf = true;
    };
  };

  security.sudo.extraRules = [
    {
      groups = [ "wheel" ];
      commands = [
        { command = "/run/current-system/sw/bin/systemctl start openvpn-uk-shark.service"; options = [ "SETENV" "NOPASSWD" ]; }
        { command = "/run/current-system/sw/bin/systemctl stop openvpn-uk-shark.service"; options = [ "SETENV" "NOPASSWD" ]; }
        { command = "/run/current-system/sw/bin/systemctl restart openvpn-uk-shark.service"; options = [ "SETENV" "NOPASSWD" ]; }
        { command = "/run/current-system/sw/bin/systemctl status openvpn-uk-shark.service"; options = [ "SETENV" "NOPASSWD" ]; }
      ];
    }
  ];
}
