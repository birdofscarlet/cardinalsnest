{ config, pkgs, lib, inputs, ... }:

#------ configuration specific to my desktop PC ------#

{

  ###########################
  #    HOME CONFIGURATION   #
  ###########################

  programs.home-manager.enable = true;
  home.username = "cardinal";
  home.homeDirectory = "/home/cardinal";
  home.stateVersion = "24.05";

  imports =
  [
    ../../system/core/shell.nix
  ];

  programs.git.enable = true;

  home.packages = with pkgs;
  [
  # TODO: make this stuff part of the desktop.nix file somehow
  alacritty
  fuzzel
  swaylock
  waybar
  swww
  mako
  swayidle

  # TODO: put this in shell configuration file
  vim
  gh
  hyfetch
  fastfetch
  x11_ssh_askpass

  proton-pass
  firefox
  ranger
  /*aseprite
    audacity
    ciscoPacketTracer8
    gimp
    obs-studio
    prismlauncher

    ringracers
    teams-for-linux
    vlc
    wonderdraft
    yt-dlp
    (pkgs.callPackage ../../derivations/dungeondraft.nix {}) */
  ];




}
