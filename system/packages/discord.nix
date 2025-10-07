{
  pkgs,
  config,
  inputs,
  ...
}: {
  programs.nixcord = {
    enable = true;
    vesktop.enable = true;
    config = {
      autoUpdate = true;
      autoUpdateNotification = true;
      disableMinSize = true;
      themeLinks = [
        "https://luckfire.github.io/amoled-cord/src/amoled-cord.css"
      ];
      frameless = true; # Set some Vencord options
      plugins = {
        alwaysExpandRoles.enable = true;
        alwaysTrust.enable = true;
        betterFolders.enable = true;
        betterFolders.closeAllFolders = true;
        betterFolders.closeOthers = true;
        betterFolders.showFolderIcon = "always";
        betterGifAltText.enable = true;
        betterSettings.enable = true;
        blurNSFW.enable = true;
        clearURLs.enable = true;
        clientTheme.enable = true;
        clientTheme.color = "000000";
        expressionCloner.enable = true;
        fakeNitro.enable = true;
        favoriteGifSearch.enable = true;
        fixImagesQuality.enable = true;
        fixSpotifyEmbeds.enable = true;
        fixYoutubeEmbeds.enable = true;
        gameActivityToggle.enable = true;
        gifPaste.enable = true;
        imageFilename.enable = true;
        noBlockedMessages.enable = true;
        noProfileThemes.enable = true;
        noSystemBadge.enable = true;
        noUnblockToJump.enable = true;
        spotifyControls.enable = true;
        spotifyCrack.enable = true;
        spotifyShareCommands.enable = true;
        summaries.enable = true;
        voiceChatDoubleClick.enable = true;
        youtubeAdblock.enable = true;
      };
    };
  };
}
