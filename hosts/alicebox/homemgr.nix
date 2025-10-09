{
  config,
  pkgs,
  lib,
  inputs,
  ...
}:
#------ configuration specific to my desktop PC ------#
{
  ###########################
  #    HOME CONFIGURATION   #
  ###########################

  programs.home-manager.enable = true;
  home.username = "cardinal";
  home.homeDirectory = "/home/cardinal";
  home.stateVersion = "24.05";

  imports = [
    ../../system/core/niri.nix
    ../../system/packages/discord.nix
    ../../system/core/shell.nix
    ../../system/core/waybar.nix
  ];

  programs = {
    git.enable = true;
    alacritty.enable = true;
    fuzzel.enable = true;
    swaylock.enable = true;
    firefox.enable = true;
    vim.enable = true;
  };

  services = {
    wpaperd.enable = true;
    mako = {
      enable = true;
      settings = {
        default-timeout = 8000;
      };
    };
    swayidle.enable = true;
  };

  home.packages = with pkgs; [
    gh
    hyfetch
    fastfetch
    ranger
    pcmanfm
    proton-pass
    aseprite
    audacity
    protonvpn-gui
    gimp
    obs-studio
    prismlauncher
    ringracers
    teams-for-linux
    vlc
    wineWowPackages.wayland
    #wonderdraft
    yt-dlp
    #(pkgs.callPackage ../../system/packages/derivations/dungeondraft.nix {})
  ];
}
