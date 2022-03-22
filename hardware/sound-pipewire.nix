{ config, pkgs, lib, ... }:

{
  # Disable the PulseAudio sound server:
  hardware.pulseaudio.enable = lib.mkForce false;

  # Enable the RealtimeKit system service, which hands out realtime scheduling priority to user processes on demand.
  # For example, the PulseAudio server uses this to acquire realtime priority.
  security.rtkit.enable = true;

  # Enable pipewire service:
  services.pipewire.enable = true;

  services.pipewire = {
    alsa.enable = true; # enable ALSA support
    alsa.support32Bit = true; # enable 32-bit ALSA support on 64-bit systems
    pulse.enable = true; # enable PulseAudio server emulation
  };

  environment.systemPackages = with pkgs; [
    alsa-utils # the Advanced Linux Sound Architecture utils
  ];
}
