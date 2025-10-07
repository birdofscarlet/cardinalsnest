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
    ../../system/core/niri.nix
    ../../system/packages/discord.nix
    ../../system/core/shell.nix
  ];

  programs =
  {
    git.enable = true;
    alacritty.enable = true;
    fuzzel.enable = true;
    swaylock.enable = true;
    waybar.enable = true;
    firefox.enable = true;
    vim.enable = true;
  };

  services =
  {
    wpaperd.enable = true;
    mako.enable = true;
    swayidle.enable = true;
  };

  home.packages = with pkgs;
  [
    gh
    hyfetch
    fastfetch
    ranger
    pcmanfm
    proton-pass
    aseprite
    audacity
    ciscoPacketTracer8
    gimp
    obs-studio
    prismlauncher
    ringracers
    teams-for-linux
    vlc
    #wonderdraft
    yt-dlp
    #(pkgs.callPackage ../../system/packages/derivations/dungeondraft.nix {})
  ];




}
