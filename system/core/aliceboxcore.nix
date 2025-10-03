{ config, pkgs, lib, inputs, ... }:
{

imports =
    [
    ./boot.nix
    ./fonts.nix
    ./network.nix
    ./user.nix
    ./nix-settings.nix
    ./services.nix
    ./desktop.nix
    ./graphics-amd.nix
    ./locale.nix
    ./niri.nix
    ];
}
