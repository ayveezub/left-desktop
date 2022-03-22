{ config, pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    obsidian # a powerful knowledge base that works on top of a local folder of plain text Markdown files
  ];

  nixpkgs.config.permittedInsecurePackages = [ "electron-13.6.9" ];
}
