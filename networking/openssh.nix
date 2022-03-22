{ config, ... }:

{
  # Enable the OpenSSH daemon:
  services.openssh.enable = true;

  services.openssh = {
    ports = [ 9911 ];
    permitRootLogin = "no";
  };
}
