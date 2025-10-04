{ pkgs, config, inputs, ... }:

{
  programs.nixcord = 
  {
    enable = true;
    vesktop = true;
  };
}
