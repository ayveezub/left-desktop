{ config, ... }:

{
  # An attribute set that maps aliases (the top level attribute names in this option) to command strings or directly to build outputs.
  # The aliases are added to all users' shells.
  # Aliases mapped to null are ignored.
  environment.shellAliases = {
    h = "tldr"; # try tldr instead of man

    # System:

    s = "sudo";
  
    sr = "sudo systemctl restart";
    ss = "sudo systemctl stop";

    l = "ls -lahXF --group-directories-first";
    n = "sudo nano";
    r = "rsync -ra --info=progress2";

    ld-logout = "loginctl kill-session $XDG_SESSION_ID";
    ld-reboot = "loginctl reboot";
    ld-shutdown = "loginctl poweroff";
    ld-suspend = "loginctl suspend";

    # Nixos:

    ld-cd = "cd /etc/nixos && ls";
    ld-cdd = "cd /etc/nixos/desktop-environment && ls";

    ld-gc = "sudo nix-collect-garbage -d";
    ld-is = "nix path-info -rSh /run/current-system | sort -k2h ";
    ld-rb = "sudo nixos-rebuild boot";
    ld-rs = "sudo nixos-rebuild switch";
  };
}
