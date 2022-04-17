{ config, ... }:

{
  # Shell commands executed just after the X server has started.
  # This option is only effective for display managers for which this feature is supported; currently these are LightDM, GDM and SDDM.
  services.xserver.displayManager.setupCommands = ''
    # LXQt Upstream installs default configuration files in
    # $prefix/share/lxqt instead of $prefix/etc/xdg, (arguably)
    # giving distributors freedom to ship custom default
    # configuration files more easily. In order to let the session
    # manager find them the share subdirectory is added to the
    # XDG_CONFIG_DIRS environment variable.
    #
    # For an explanation see
    # https://github.com/lxqt/lxqt/issues/1521#issuecomment-405097453
    #
    export XDG_CONFIG_DIRS=$XDG_CONFIG_DIRS''${XDG_CONFIG_DIRS:+:}${config.system.path}/share
  '';
}
