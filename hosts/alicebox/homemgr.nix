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

  ];

  home.packages = with pkgs;
  [
  /*  kitty
    aseprite
    audacity
    ciscoPacketTracer8
    gimp
    obs-studio
    prismlauncher
    proton-pass
    ringracers
    teams-for-linux
    vlc
    wonderdraft
    yt-dlp
    (pkgs.callPackage ../../derivations/dungeondraft.nix {}) */
  ];




}
