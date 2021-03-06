{ config, pkgs, ... }:

{
  # Enable steam:
  programs.steam.enable = true;

  # On 64-bit systems, whether to support Direct Rendering for 32-bit applications (such as Wine).
  # This is currently only supported for the `nvidia` as well as `Mesa`.
  hardware.opengl.driSupport32Bit = true;


  environment.systemPackages = with pkgs; [
    protontricks # a simple wrapper for running Winetricks commands for Proton-enabled games
  ];
}
