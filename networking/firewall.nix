{ config, ... }:

{
  # Disable the firewall altogether:
  #networking.firewall.enable = false;

  # Open ports in the firewall:

  networking.firewall.allowedTCPPorts = [
    3000 4000 4040 8080 # Dev
    1234 # Dev
    51413 # Transmission
  ];

  networking.firewall.allowedUDPPorts = [
    51413 # Transmission
  ];
}
