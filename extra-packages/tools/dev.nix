{ config, pkgs, ... }:

let
  unstable = import <nixos-unstable> { config = { allowUnfree = true; }; };

in {
  environment.systemPackages = with pkgs; [
    # Programming Languages:
    unstable.nodejs # event-driven I/O framework for the V8 JavaScript engine


    chromium # an open source web browser from Google
    unstable.vscodium-fhs # wrapped variant of vscodium which launches in a FHS compatible envrionment (should allow for easy usage of extensions without nix-specific modifications)
  ];
}
