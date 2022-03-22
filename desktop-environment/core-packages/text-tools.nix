{ config, pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    djvulibre # the big set of CLI tools to make/modify/optimize/show/export DJVU files
    dos2unix # convert text files with DOS or Mac line breaks to Unix line breaks and vice versa
    html2text # convert HTML to plain text
  ];
}
