{ config, pkgs, ... }:

{
  nix = {
    package = pkgs.nixFlakes;

    # Rebuild smoothly:
    daemonCPUSchedPolicy = "idle"; # default "other"
    daemonIOSchedPriority = 2; # default 0, values in the range 0 (high) to 7 (low)

    extraOptions = ''
      experimental-features = nix-command flakes
    '';
  };
}
