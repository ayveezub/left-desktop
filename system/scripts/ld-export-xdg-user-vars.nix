{ config, pkgs, ... }:

let
  ld-export-xdg-user-vars = pkgs.writeScriptBin "ld-export-xdg-user-vars" ''
    #!${pkgs.stdenv.shell}

    if [ -z "$XDG_DATA_HOME" ]; then
      export XDG_DATA_HOME="$HOME/.local/share"
    fi

    if [ -z "$XDG_CONFIG_HOME" ]; then
      export XDG_CONFIG_HOME="$HOME/.config"
    fi

    if [ -z "$XDG_STATE_HOME" ]; then
      export XDG_STATE_HOME="$HOME/.local/state"
    fi

    if [ -z "$XDG_CACHE_HOME" ]; then
      export XDG_CACHE_HOME="$HOME/.cache"
    fi
  '';

in { environment.systemPackages = [ ld-export-xdg-user-vars ]; }
