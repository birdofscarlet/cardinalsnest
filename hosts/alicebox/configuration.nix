{ config, pkgs, lib, inputs, ... }:

#------ configuration specific to my desktop PC ------#

{

  ##########################
  # ALICEBOX CONFIGURATION #
  ##########################

  hardware.cpu.amd.updateMicrocode = true;

  ###########
  # MODULES #
  ###########
  
  nixpkgs.overlays = [niri.overlays.niri];
  
  imports =
    [
        ./hardware-configuration.nix
        ../../system/core/aliceboxcore.nix
        inputs.home-manager.nixosModules.home-manager
    ];


  home-manager =
  {
    extraSpecialArgs = { inherit inputs; };
    users =
    {
      "cardinal" = import ./homemgr.nix;
    };
  };

    system.stateVersion = "24.11";

}
