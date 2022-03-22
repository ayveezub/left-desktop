{ config, pkgs, lib, ... }:

{
  # Runtime parameters of the Linux kernel, as set by sysctl(8).
  # Note that sysctl parameters names must be enclosed in quotes (e.g. "vm.swappiness" instead of vm.swappiness).
  # The value of each parameter may be a string, integer, boolean, or null (signifying the option will not appear at all).
  #
  # `uname -a` to check kernel version.

  #boot.kernelPackages = lib.mkDefault pkgs.linuxPackages_latest;
  #boot.kernelPackages = pkgs.linuxPackages_latest_hardened;
  #boot.kernelPackages = pkgs.linuxPackages_hardened;

  boot.kernelModules = [ "tcp_bbr" ];
  boot.kernel.sysctl = {
    # https://www.kernel.org/doc/html/latest/admin-guide/sysrq.html
    "kernel.sysrq" = 1;

    # Do less swapping:
    "vm.swappiness" = 20;
    "vm.vfs_cache_pressure" = 100;

    # Requires >= 4.9 kernel module
    "net.ipv4.tcp_congestion_control" = "bbr";
    # Requires >= 4.19 kernel module
    "net.core.default_qdisc" = "cake";

    # Ignore ICMP broadcasts to avoid participating in Smurf attacks:
    #"net.ipv4.icmp_echo_ignore_broadcasts" = 1;

    # Ignore bad ICMP errors:
    #"net.ipv4.icmp_ignore_bogus_error_responses" = 1;

    # Reverse-path filter for spoof protection:
    #"net.ipv4.conf.default.rp_filter" = 1;
    #"net.ipv4.conf.all.rp_filter" = 1;

    # SYN flood protection:
    #"net.ipv4.tcp_syncookies" = 1;

    # Do not accept ICMP redirects (prevent MITM attacks):
    #"net.ipv4.conf.all.accept_redirects" = 0;
    #"net.ipv4.conf.default.accept_redirects" = 0;
    #"net.ipv4.conf.all.secure_redirects" = 0;
    #"net.ipv4.conf.default.secure_redirects" = 0;
    #"net.ipv6.conf.all.accept_redirects" = 0;
    #"net.ipv6.conf.default.accept_redirects" = 0;

    # Do not send ICMP redirects (we are not a router):
    #"net.ipv4.conf.all.send_redirects" = 0;

    # Do not accept IP source route packets (we are not a router):
    #"net.ipv4.conf.all.accept_source_route" = 0;
    #"net.ipv6.conf.all.accept_source_route" = 0;

    # Protect against tcp time-wait assassination hazards:
    #"net.ipv4.tcp_rfc1337" = 1;
  };
}
