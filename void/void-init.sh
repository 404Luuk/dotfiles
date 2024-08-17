#!/bin/sh

## update packagedb
xbps-pkgdb -u && xbps-pkgdb -av

## Update XBPS and install some needed tools
xbps-install -Syuv xbps vim ufw audit apparmor void-updates void-repo-nonfree

## Update all from remote
xbps-install -Suyv

## Intel firmware etc
xbps-install -Suyv intel-ucode tbb intel-media-driver intel-video-accel mesa-dri mesa-utils 

## Bash eoa
xbps-install -Suyv bash-completion bash-preexec ansi python3-argcomplete lilv-bash-completion

## various tools
xbps-install -Suyv xtools binutils NetworkManager dnsmasq nnn fim lm_sensors

## reconfigure 
xbps-reconfigure -afvd


