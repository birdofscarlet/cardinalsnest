{ config, pkgs, lib, inputs, ... }:
{

programs =
  { 
    alacritty = {
    settings = {
      window.padding = {
        x = 10;  # Horizontal padding
        y = 10;  # Vertical padding
      };
      font.size = 12;  # Font size
      scrolling.history = 1000;  # Scrollback history
      };
    };

    zsh = {
    enable = true;
    enableCompletion = true;
    autosuggestion.enable = true;
    syntaxHighlighting.enable = true;
    autocd = true;

    shellAliases =
    {
      "ll" = "ls -l";
      "la" = "ls -a";
      ".." = "cd ..";
    };

    oh-my-zsh =
    {
      enable = true;
      plugins = [ "git" ];
      theme = "bureau";
    };

     initContent = "hyfetch";

   }; 


  };


 }

