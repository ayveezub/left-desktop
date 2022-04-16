{ config, ... }:

{
  # A set of environment variables used in the global environment.
  # These variables will be set on shell initialisation (e.g. in `/etc/profile`).
  # The value of each variable can be either a string or a list of strings.
  # The latter is concatenated, interspersed with colon characters.
  environment.variables.BROWSER = "firefox";
  environment.variables.EDITOR = "nano";
  environment.variables.TERMINAL = "alacritty";
}
