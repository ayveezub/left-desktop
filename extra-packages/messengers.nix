{ config, pkgs, ... }:

let
  unstable = import <nixos-unstable> { config = { allowUnfree = true; }; };

in {
  environment.systemPackages = with pkgs; [
    #unstable.discord # all-in-one cross-platform voice and text chat for gamers
    unstable.tdesktop # Telegram Desktop messaging app
    unstable.vk-messenger # simple and convenient messaging app for VK
    unstable.whatsapp-for-linux # Whatsapp desktop messaging app
  ];
}
