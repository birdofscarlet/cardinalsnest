{ config, lib, pkgs, ... }:

{

# Desktop Portal configuration
  xdg.portal =
  {
    enable = true;
      config =
      {
        common =
        {
          default =
          [
            "gtk"
          ];

          "org.freedesktop.impl.portal.FileChooser" =
          [
            "gtk"
          ];

        };
      };

    extraPortals = with pkgs;
    [
    xdg-desktop-portal-gtk
    ];

  };

# Desktop Services configuration
  services =
  {
    libinput.enable = true;

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

