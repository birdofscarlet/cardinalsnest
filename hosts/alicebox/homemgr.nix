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
  git
  gh
  hyfetch
  fastfetch

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
