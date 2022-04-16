{ config, pkgs, ... }:

{
  # Programming Languages:
  environment.systemPackages = with pkgs; [
    unstable.nodejs # event-driven I/O framework for the V8 JavaScript engine
  ];

  environment.systemPackages = with pkgs; [
    chromium # an open source web browser from Google
    firefox-devedition-bin # Mozilla Firefox, free web browser (binary package)
    unstable.vscodium-fhs # wrapped variant of vscodium which launches in a FHS compatible envrionment (should allow for easy usage of extensions without nix-specific modifications)
  ];
}
