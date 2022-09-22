{ config, pkgs, ... }:

let
  unstable = import <nixos-unstable> { config = { allowUnfree = true; }; };

in {
  # Tor Browser Bundle is a bundle of the Tor daemon, Tor Browser (heavily patched version of Firefox), several essential extensions for Tor Browser, and some tools that glue those together with a convenient UI.
  # `tor-browser-bundle-bin` package is the official version built by torproject.org patched with `patchelf` to work under nix and with bundled scripts adapted to the read-only nature of the `/nix/store`.
  environment.systemPackages = with pkgs; [
    unstable.tor-browser-bundle-bin
  ];
}
