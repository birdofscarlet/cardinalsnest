{ pkgs, ... }:

{
    stylix = 
    {
      enable = true;
      base16Scheme = "${pkgs.base16-schemes}/share/themes/bright.yaml";
      image = ../cardinal/walls/1.jpg;
    };
}
