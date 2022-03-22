{ config, pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    feh # a light-weight image viewer
    ffmpeg # a complete, cross-platform solution to record, convert and stream audio and video
    ffmpegthumbnailer # a lightweight video thumbnailer
    mediainfo # supplies technical and tag information about a video or audio file
    moc # an ncurses console audio player designed to be powerful and easy to use
    mpv # general-purpose media player, fork of MPlayer and mplayer2
    viu # a command-line application to view images from the terminal written in Rust
    yt-dlp # command-line tool to download videos from YouTube.com and other sites (youtube-dl fork)
  ];
}
