{ config, pkgs, ... }:

{
  # `nnn` supports a few optional (set if you need) environment variables:

  # Key-Bookmark pairs:
  environment.variables.NNN_BMS = "a:$HOME/Art;d:$HOME/Dev;D:$HOME/Downloads;l:$HOME/Lit;M:$HOME/Music;V:$HOME/Videos";
  
  environment.systemPackages = with pkgs; [
    nnn # small ncurses-based file browser forked from noice
  ];
}
