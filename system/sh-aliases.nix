{ config, ... }:

{
  # An attribute set that maps aliases (the top level attribute names in this option) to command strings or directly to build outputs.
  # The aliases are added to all users' shells. Aliases mapped to null are ignored.
  environment.shellAliases = {
    h = "tldr"; # try tldr instead of man


    # System:
    s = "sudo";
  
    sr = "sudo systemctl restart";
    st = "sudo systemctl status";
    ss = "sudo systemctl stop";

    l = "ls -alhXF --group-directories-first";
    sn = "sudo nano";

    r = "rsync -av --checksum --info=progress2 --stats --human-readable";

    clip = "xclip -selection clipboard";
    tree = "exa --tree";

    ld-x = "sudo systemctl restart display-manager";


    # Git:
    g = "git";
    gamend = "git add . && git commit --amend";
    gst = "git stash";
    gsp = "git stash pop";
    gsa = "git stash apply";
    gsl = "git stash list --pretty=format:'%Cblue%gd%C(yellow): %C(brightwhite)%s'";
    gco = "git checkout";
    gc = "git commit --message";
    gca = "git commit --all --message";
    gs = "git status --short";
    gd = "git diff";
    gdc = "git diff --cached";
    gfr = "git pull --rebase";
    tig = "tig status";
    gl = "git lg";
    gp = "git push";
    gso = "git log -p --all --source -S "; # search string in all branches, gso <string>


    # Nixos:
    ld-cd = "cd /etc/nixos && ls";

    ld-gc = "sudo nix-collect-garbage -d";
    ld-is = "nix path-info -rSh /run/current-system | sort -k2h ";
  };
}
