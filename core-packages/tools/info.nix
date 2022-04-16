{ config, pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    du-dust # du + rust = dust (like du, but more intuitive)
    glxinfo # test utilities for OpenGL
    gsmartcontrol # hard disk drive health inspection tool
    hddtemp # tool for displaying hard disk temperature
    hwinfo # hardware detection tool from openSUSE
    hyperfine # command-line benchmarking tool
    i2c-tools # set of I2C tools for Linux
    inxi # a full featured CLI system information tool
    iotop # a tool to find out the processes doing the most IO
    iperf2 # tool to measure IP bandwidth using UDP or TCP
    lm_sensors # tools for reading hardware sensors
    lshw # provide detailed information on the hardware configuration of the machine
    neofetch # a fast, highly customizable system info script
    smartmontools # tools for monitoring the health of hard drives
  ];
}
