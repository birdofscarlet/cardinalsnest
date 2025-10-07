{ config, pkgs, inputs, lib, ...}

{

# terminal utilities

environment.systemPackages = with pkgs;
  [
    gh
    hyfetch
    fastfetch
    ranger
  ];

}
