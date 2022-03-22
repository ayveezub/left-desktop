{ config, pkgs, ... }:

{
  # Enable GnuPG agent with socket-activation for every user session:
  programs.gnupg.agent.enable = true;

  # Enable SSH agent support in GnuPG agent.
  # Also sets SSH_AUTH_SOCK environment variable correctly.
  # This will disable socket-activation and thus always start a GnuPG agent per user session.
  programs.gnupg.agent.enableSSHSupport = true;

  programs.gnupg.agent = {
    pinentryFlavor = "qt"; # which pinentry interface to use
  };
}
