# Left Desktop

**My customized NixOS.**

# Table of contents

- [Installation](#installation)
  - [Commands for Installing Left Desktop on an empty hard drive](#commands-for-installing-left-desktop-on-an-empty-hard-drive)

# Installation

## Commands for Installing Left Desktop on an empty hard drive

**With a partitioned disk (here `/dev/sda`):**

1. Formatting:

   ```
   #  mkfs.ext4 -L nixos /dev/sda1
    
   #  mkswap -L swap /dev/sda2
   
   #  mkfs.fat -F 32 -n BOOT /dev/sda3         # (for UEFI systems only)
   ```

2. Mount the target file system on which Left Desktop should be installed on `/mnt`, e.g:

   ```
   #  mount /dev/disk/by-label/nixos /mnt
   
   #  mkdir -p /mnt/boot                       # (for UEFI systems only)
   #  mount /dev/disk/by-label/BOOT /mnt/boot  # (for UEFI systems only)
   ```

3. Activate swap devices now (`swapon device`):

   ```
   #  swapon /dev/sda2
   ```

4. Do the installation:

   ```
   #  git clone https://github.com/ayveezub/left-desktop.git /mnt/etc/nixos
   #  chown -hR root:wheel /mnt/etc/nixos
   
   #  nixos-generate-config --root /mnt
   #  mv /mnt/etc/nixos/configuration.nix /mnt/etc/nixos/generated.configuration.nix
   
   #  nixos-install --root /mnt --flake /mnt/etc/nixos#a11-dtop
   ```

This will install your system based on the configuration you provided. If anything fails due to a configuration problem or any other issue (such as a network outage while downloading binaries from the NixOS binary cache), you can re-run `nixos-install` after fixing your configuration.

As the last step, `nixos-install` will ask you to set the password for the `root` user, e.g.

5. If everything went well:

   ```
   #  reboot
   ```

You should now be able to boot into the installed NixOS.
You’ll probably want to change the user password with `passwd`.
