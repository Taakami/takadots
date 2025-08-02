{
  inputs,
  pkgs,
  ...
}: let
  spicePkgs = inputs.spicetify-nix.legacyPackages.${pkgs.stdenv.system};
in {
  imports = [inputs.spicetify-nix.homeManagerModules.default];
  stylix.targets.spicetify.enable = true;
  programs.spicetify = {
    enable = true;
    experimentalFeatures = true;
    wayland = true;
    windowManagerPatch = true;
    enabledExtensions = with spicePkgs.extensions; [
      adblockify
      keyboardShortcut
      fullAlbumDate
    ];
    enabledSnippets = with spicePkgs.snippets; [
      oneko
      # declutterNowPlayingBar
    ];
    # theme = spicePkgs.themes.hazy;
  };
}
