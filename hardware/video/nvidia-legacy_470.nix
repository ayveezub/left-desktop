{ config, pkgs, ... }:

{
  services.xserver.videoDrivers = [ "nvidia" ];
  hardware.nvidia.package = config.boot.kernelPackages.nvidiaPackages.legacy_470;


  services.xserver = {
    # Contents of the first Device section of the X server configuration file:
    deviceSection = ''
      Option    "NoLogo" "1"
    '';

    # Contents of the first Screen section of the X server configuration file:
    screenSection = ''
      Option    "TripleBuffer" "1"
    '';

    # Additional contents (sections) included in the X server configuration file:
    extraConfig = ''
      Section "Extensions"
        Option    "Composite" "Enable"
      EndSection
    '';
  };


  environment.systemPackages = with pkgs; [
    nvtop # a (h)top like task monitor for NVIDIA GPUs
  ];
}
