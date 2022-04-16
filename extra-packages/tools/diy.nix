{ config, pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    prusa-slicer # G-code generator for 3D printer
  ];
}
