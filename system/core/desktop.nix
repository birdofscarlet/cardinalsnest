{ config, lib, pkgs, inputs, ... }:

{

  nixpkgs.overlays = [ inputs.niri.overlays.niri ];

# Compositor

  programs.niri =
  {
    enable = true;

  };

# Desktop Services configuration
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

}

