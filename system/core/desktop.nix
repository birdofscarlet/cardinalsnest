{ config, lib, pkgs, inputs, ... }:

{

  nixpkgs.overlays = [ inputs.niri.overlays.niri ];
  programs =
  {
    niri.enable = true;
    xwayland.enable = true;
  };

  services =
  {
    libinput.enable = true;
    xserver.enable = true;

    greetd =
    {
      enable = true;

      settings =
      {
        default_session =
        {
          command = "${pkgs.tuigreet}/bin/tuigreet --cmd niri-session";
        };
      };
    };
  };

  environment.systemPackages = with pkgs;
  [
    xwayland-satellite
  ];

}

