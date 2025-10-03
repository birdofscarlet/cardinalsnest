  { config, pkgs, lib, inputs, ... }:
{
  nix.settings =
  {
    experimental-features = [ "nix-command" "flakes" ];
  };

  nixpkgs.config =
  {
    allowUnfree = true;
    allowUnsupportedSystem = true;
  };

  home-manager =
  {
    backupFileExtension = "bak";
  };

 }
