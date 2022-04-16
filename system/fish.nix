{ config, pkgs, ... }:

{
  # Configure fish as an interactive shell:
  programs.fish.enable = true;

  # Enable fish as default shell system-wide:
  users.defaultUserShell = pkgs.fish;


  # Once hooked into your shell direnv is looking for an .envrc file in your current directory before every prompt.
  # If found it will load the exported environment variables from that bash script into your current environment, and unload them if the .envrc is not reachable from the current path anymore.
  # In short, this little tool allows you to have project-specific environment variables. 
  environment.systemPackages = with pkgs; [
    direnv # a shell extension that manages your environment
  ];

  # Enables the daemon for `lorri`, a nix-shell replacement for project development.
  # The socket-activated daemon starts on the first request issued by the `lorri` command. 
  services.lorri.enable = true;
}
