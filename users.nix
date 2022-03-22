{ config, lib, ... }:

{
  # Define a user accounts. Don't forget to set a password with `passwd`.

  users.users.aleksey = {
    description = "Aleksey";
    initialPassword = "aleksey";
    uid = 1011;

    isNormalUser = true;
    extraGroups = [ "wheel" # enable `sudo` for the user
      "networkmanager"
    ];
  };

  users.users.ksevelyar = {
    description = "ksevelyar";
    initialPassword = "ksevelyar";

    isNormalUser = true;
    extraGroups = [ "wheel" # enable `sudo` for the user
      "networkmanager"
    ];
  };

  # If set to `true`, you are free to add new users and groups to the system with the ordinary `useradd` and `groupadd` commands.
  # On system activation, the existing contents of the `/etc/passwd` and `/etc/group` files will be merged with the contents generated from the `users.users` and `users.groups` options.
  # The initial password for a user will be set according to `users.users`, but existing passwords will not be changed.
  #
  # If set to `false`, the contents of the user and group files will simply be replaced on system activation.
  # This also holds for the user passwords; all changed passwords will be reset according to the `users.users` configuration on activation.
  users.mutableUsers = lib.mkForce true;
}
