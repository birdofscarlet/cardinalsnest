{ pkgs, inputs, ... }:

{
    stylix = 
    {
      enable = true;
      base16Scheme = "${pkgs.base16-schemes}/share/themes/windows-95.yaml";
      image = ../cardinal/walls/1.jpg;
      

      cursor = 
      {
        name = "Simp1e-Dark";
        package = pkgs.simp1e-cursors;
        size = 12; 
      };

      opacity = 
      {
        terminal = 0.7;
      };
      
      overlays.enable = true;
     
      
    };
}
