{ config, pkgs, ... }:

{
  services.xserver.videoDrivers = [ "intel" ];

  hardware.opengl.extraPackages = with pkgs; [
    vaapiIntel
    vaapiVdpau
    libvdpau-va-gl
    intel-media-driver
  ];


  services.xserver = {
    # Additional contents (sections) included in the X server configuration file:
    extraConfig = ''
      Section "Extensions"
        Option    "Composite" "Enable"
      EndSection
    '';
  };
}
