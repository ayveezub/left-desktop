{ config, pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    unstable.tdesktop # Telegram Desktop messaging app
    vk-messenger # simple and convenient messaging app for VK
  ];
}
