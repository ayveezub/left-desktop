{ config, pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    brightnessctl # this program allows you read and control device brightness
  ];
}
