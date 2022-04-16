{ config, pkgs, ... }:

{
  # `nnn` supports a few optional (set if you need) environment variables:
  environment.variables.NNN_BMS = "a:$HOME/Art;d:$HOME/Dev;D:$HOME/Downloads;l:$HOME/Lit;M:$HOME/Music;v:$HOME/Vaults;V:$HOME/Videos"; # Key-Bookmark pairs
  
  environment.systemPackages = with pkgs; [
    nnn # small ncurses-based file browser forked from noice
  ];
}
