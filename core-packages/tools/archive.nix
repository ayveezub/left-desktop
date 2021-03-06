{ config, pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    atool # archive command line helper
    gnutar # GNU implementation of the `tar` archiver
    gzip # GNU zip compression program
    p7zip # a new p7zip fork with additional codecs and improvements
    pigz # a parallel implementation of gzip for multi-core machines
    unar # an archive unpacker program
    unzip # an extraction utility for archives compressed in .zip format


    # Dependencies:
    lz4 # extremely fast compression algorithm
    zlib # lossless data-compression library
  ];
}
