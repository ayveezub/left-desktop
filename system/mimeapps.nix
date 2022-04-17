{ config, ... }:

{
  environment.etc."xdg/mimeapps.list" = {
    text = ''
      [Default Applications]
      inode/directory=pcmanfm-qt.desktop
      
      application/pdf=org.kde.okular.desktop
      application/x-extension-htm=firefox.desktop
      application/x-extension-html=firefox.desktop
      application/x-extension-shtml=firefox.desktop
      application/x-extension-xhtml=firefox.desktop
      application/x-extension-xht=firefox.desktop
      application/x-yaml=codium.desktop
      application/xhtml+xml=firefox.desktop
      image/gif=lximage-qt.desktop
      image/jpeg=lximage-qt.desktop
      image/png=lximage-qt.desktop
      text/html=firefox.desktop
      text/plain=featherpad.desktop
      video/mpeg=mpv.desktop
      video/x-matroska=mpv.desktop
      x-scheme-handler/about=firefox.desktop
      x-scheme-handler/chrome=firefox.desktop
      x-scheme-handler/ftp=firefox.desktop
      x-scheme-handler/http=firefox.desktop
      x-scheme-handler/https=firefox.desktop
      x-scheme-handler/magnet=transmission-qt.desktop;
      x-scheme-handler/unknown=firefox.desktop

      [Added Associations]
      application/javascript=codium.desktop
      application/json=codium.desktop
      text/markdown=featherpad.desktop
      
    '';
  };
}
