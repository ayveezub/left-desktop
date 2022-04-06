{ config, pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    atool # archive command line helper
    curl # a command line tool for transferring files with URL syntax
    curlie # frontend to curl that adds the ease of use of httpie, without compromising on features and performance
    ddrescue # GNU ddrescue, a data recovery tool
    ddrescueview # a tool to graphically examine ddrescue mapfiles
    dosfstools # utilities for creating and checking FAT and VFAT file systems
    exa # replacement for 'ls' written in Rust
    fd # a simple, fast and user-friendly alternative to find
    ffsend # a fully featured Firefox Send client
    fzf # a command-line fuzzy finder written in Go
    gparted # graphical disk partitioning tool
    gptfdisk # set of text-mode partitioning tools for Globally Unique Identifier (GUID) Partition Table (GPT) disks
    less # a more advanced file pager than ‘more’
    lnav # The Logfile Navigator
    mc # File Manager and User Shell for the GNU Project
    mtools # utilities to access MS-DOS disks
    ncdu # disk usage analyzer with an ncurses interface
    parted # create, destroy, resize, check, and copy partitions
    ripgrep # a utility that combines the usability of The Silver Searcher with the raw speed of grep
    rsync # a fast incremental file transfer utility
    sd # intuitive find & replace CLI (sed alternative)
    skim # command-line fuzzy finder written in Rust
    trash-cli # command line tool for the desktop trash can
    wget # tool for retrieving files using HTTP, HTTPS, and FTP
    wget2 # successor of GNU Wget, a file and recursive website downloader
    woeusb # create bootable USB disks from Windows ISO images
    zoxide # a fast cd command that learns your habits
  ];
}
