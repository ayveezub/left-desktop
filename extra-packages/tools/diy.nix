{ config, pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    cura # 3D printer / slicing GUI built on top of the Uranium framework
    platformio # an open source ecosystem for IoT development
    prusa-slicer # G-code generator for 3D printer
  ];
}
