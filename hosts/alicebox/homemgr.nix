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
    ../../system/core/niri.nix
  ];

  programs = 
  {
    git.enable = true;
    alacritty.enable = true;
    fuzzel.enable = true;
    swaylock.enable = true;
    waybar.enable = true;
    vim.enable = true;
    gh.enable = true;
  };

  services =
  {
    wpaperd.enable = true;
    mako.enable = true;
    swayidle.enable = true;
  };

  home.packages = with pkgs;
  [
  # TODO: put this in shell configuration file
  hyfetch
  fastfetch
  x11_ssh_askpass
  xwayland-satellite

  proton-pass
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
