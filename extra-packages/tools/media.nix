{ config, pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    ffmpeg # a complete, cross-platform solution to record, convert and stream audio and video
    ffmpegthumbnailer # a lightweight video thumbnailer
    flacon # extracts audio tracks from an audio CD image to separate tracks
    mediainfo # supplies technical and tag information about a video or audio file
    moc # an ncurses console audio player designed to be powerful and easy to use
    mpv # general-purpose media player, fork of MPlayer and mplayer2
    #unstable.spotify # play music from the Spotify music service
    yt-dlp # command-line tool to download videos from YouTube.com and other sites (youtube-dl fork)
  ];
}
