{ config, pkgs, lib, inputs, ... }:
{


  programs.steam.enable = true; # put this somewhere it makes sense later TODO
imports =
    [
    ./boot.nix
    ./fonts.nix
    ./network.nix
    ./user.nix
    ./nix-settings.nix
    ./services.nix
    ./graphics-amd.nix
    ./locale.nix
    ./desktop.nix
    ./stylix.nix
    ];
}
