{ config, pkgs, ... }:

let
  ld-link-shared-dotfiles = pkgs.writeScriptBin "ld-link-shared-dotfiles" ''
    #!${pkgs.stdenv.shell}

    ldSharedDotfiles="/etc/nixos/desktop-environment/shared-dotfiles"

    # `$HOME/.config/fish`
    if ! [ -d "$HOME/.config/fish" ]; then
      mkdir -p "$HOME/.config/fish"
    fi

    rm -fv "$HOME/.config/fish/config.fish"
    ln -s "$ldSharedDotfiles/.config/fish/config.fish" "$HOME/.config/fish/config.fish"

    # `$HOME/.config/leftwm`
    if ! [ -d "$HOME/.config/leftwm" ]; then
      mkdir -p "$HOME/.config/leftwm"
    fi

    rm -fv "$HOME/.config/leftwm/config.toml"
    ln -s "$ldSharedDotfiles/.config/leftwm/config.toml" "$HOME/.config/leftwm/config.toml"

    # `$HOME/Templates`
    if ! [ -d "$HOME/Templates" ]; then
      mkdir -p "$HOME/Templates"
    fi

    rm -fv "$HOME/Templates/.envrc"
    ln -s "$ldSharedDotfiles/Templates/.envrc" "$HOME/Templates/.envrc"

    rm -fv "$HOME/Templates/shell.nix"
    ln -s "$ldSharedDotfiles/Templates/shell.nix" "$HOME/Templates/shell.nix"

    # `$HOME`
    rm -fv "$HOME/.npmrc"
    ln -s "$ldSharedDotfiles/.npmrc" "$HOME/.npmrc"

    rm -fv "$HOME/.nuxtrc"
    ln -s "$ldSharedDotfiles/.nuxtrc" "$HOME/.nuxtrc"

    rm -fv "$HOME/.vuerc"
    ln -s "$ldSharedDotfiles/.vuerc" "$HOME/.vuerc"
  '';

in { environment.systemPackages = [ ld-link-shared-dotfiles ]; }
