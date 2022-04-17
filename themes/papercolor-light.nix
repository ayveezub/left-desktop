{ config, pkgs, lib, ... }:

let
  currentTheme = "papercolor-light";

  rsyncCmd = "rsync -av --checksum --info=progress2 --stats --human-readable";

  ld-apply-theme = pkgs.writeScriptBin "ld-apply-theme" ''
    #!${pkgs.stdenv.shell}

    ${rsyncCmd} "/etc/nixos/themes/${currentTheme}/dotfiles/" "$HOME"

    rm -rf "$HOME/.config/leftwm/themes/current"
    ln -s "$HOME/.config/leftwm/themes/${currentTheme}" "$HOME/.config/leftwm/themes/current"

    update-mime-database "$HOME/.local/share/mime"

    echo -e "Left Desktop: applied ${currentTheme} theme"
  '';


in {
  imports = [
    (./. + "/${currentTheme}/console.nix")
    (./. + "/${currentTheme}/fonts.nix")
    (./. + "/${currentTheme}/grub.nix")
    (./. + "/${currentTheme}/lightdm-tiny-greeter.nix")
    (./. + "/${currentTheme}/themes-gtk.nix")
    (./. + "/${currentTheme}/themes-qt.nix")
  ];


  environment.systemPackages = [ ld-apply-theme ];
}
