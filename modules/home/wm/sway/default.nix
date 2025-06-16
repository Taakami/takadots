{
  pkgs,
  ...
}:
{
  imports = [
    ./keybindings.nix
    ./style.nix
  ];
  wayland.windowManager.sway = {
    enable = true;
    wrapperFeatures.gtk = true; # Fixes common issues with GTK 3 apps
    package = pkgs.swayfx;
    checkConfig = false;
    config = {
      output = {
        LVDS-1 = {
          mode = "1366x768@60Hz";
        };
      };
      defaultWorkspace = "workspace number 1";
      input."*" = {
          xkb_layout = "fr";
      };
      startup = [
        { command = "swaync"; }
        { command = "swww-daemon --format xrgb"; }
        { command = "clipse -listen"; }
      ];
      workspaceAutoBackAndForth = true;
      bars = [
        { command = "waybar"; }
      ];
    };
  };
}