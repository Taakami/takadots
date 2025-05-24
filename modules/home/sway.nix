{
  pkgs,
  ...
}:
{
  wayland.windowManager.sway = {
    enable = true;
    wrapperFeatures.gtk = true; # Fixes common issues with GTK 3 apps
    package = pkgs.swayfx;
    config = rec {
      input."*" = {
          xkb_layout = "fr";
      };
      modifier = "Mod4";
      # Use kitty as default terminal
      terminal = "kitty";
      menu = "rofi -show drun";
      startup = [
        { command = "autotiling-rs"; }
      ];
      window.bars."*".command = "waybar";
      gaps = {
        inner = 8;
        outer = 8;
      };
    };
    extraConfig = ''
      blur enable
      corner_radius 4
    '';
  };
}