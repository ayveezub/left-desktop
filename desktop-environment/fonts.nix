{ config, pkgs, ... }:

{
  # If enabled, a Fontconfig configuration file will be built pointing to a set of default fonts.
  # If you don't care about running X11 applications or any other program that uses Fontconfig,
  # you can turn this option off and prevent a dependency on all those fonts.
  fonts.fontconfig.enable = true; # default true

  fonts.fontconfig = {
    antialias = true;
    cache32Bit = true; # generate system fonts cache for 32-bit applications
    dpi = 96;
    hinting.enable = true; # hinting aligns glyphs to pixel boundaries to improve rendering sharpness at low resolution
  };

  # Enable a basic set of fonts providing several font styles and families and reasonable coverage of Unicode:
  fonts.enableDefaultFonts = true;

  # System-wide default font(s):
  fonts.fontconfig.defaultFonts = {
    emoji = [ "Noto Emoji" ];
    monospace = [ "Roboto Mono" ];
    sansSerif = [ "Roboto" ];
    serif = [ "Roboto Slab" ];
  };

  # List of primary font paths:
  fonts.fonts = with pkgs; [
    corefonts # nonfree Microsoft's TrueType core fonts for the Web
    liberation_ttf # Liberation Fonts, replacements for Times New Roman, Arial, and Courier New
    noto-fonts-emoji
    roboto
    roboto-mono
    roboto-slab
    siji # an iconic bitmap font based on Stlarch with additional glyphs
  ];
}
