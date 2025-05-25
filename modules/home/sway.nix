{
  pkgs,
  lib,
  ...
}:
{
  wayland.windowManager.sway = {
    enable = true;
    wrapperFeatures.gtk = true; # Fixes common issues with GTK 3 apps
    package = pkgs.swayfx;
    checkConfig = false;
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
        { command = "kitty"; }
      ];
      bars = [
        {
          command = "waybar";
        }
      ];
      gaps = {
        inner = 8;
        outer = 8;
      };
      keybindings = 
        let
        modifier = config.wayland.windowManager.sway.config.modifier;
        in lib.mkOptionDefault {
        # Switch to workspace
        "${modifier}+ampersand" = "workspace number 1";
        "${modifier}+eacute" = "workspace number 2";
        "${modifier}+quotedbl" = "workspace number 3";
        "${modifier}+apostrophe" = "workspace number 4";
        "${modifier}+parenleft" = "workspace number 5";
        "${modifier}+minus" = "workspace number 6";
        "${modifier}+egrave" = "workspace number 7";
        "${modifier}+underscore" = "workspace number 8";
        "${modifier}+ccedilla" = "workspace number 9";
        "${modifier}+agrave" = "workspace number 10";
        "${modifier}+Shift+ampersand" = "move container to workspace number 1"
        "${modifier}+Shift+eacute" = "move container to workspace number 2"
        "${modifier}+Shift+quotedbl" = "move container to workspace number 3"
        "${modifier}+Shift+apostrophe" = "move container to workspace number 4"
        "${modifier}+Shift+parenleft" = "move container to workspace number 5"
        "${modifier}+Shift+minus" = "move container to workspace number 6"
        "${modifier}+Shift+egrave" = "move container to workspace number 7"
        "${modifier}+Shift+underscore" = "move container to workspace number 8"
        "${modifier}+Shift+ccedilla" = "move container to workspace number 9"
        "${modifier}+Shift+agrave" = "move container to workspace number 10"
      };
    };
    extraConfig = ''
      blur enable
      corner_radius 4
    '';
  };
}