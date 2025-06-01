{
  pkgs,
  lib,
  colorScheme,
  ...
}:
{
  wayland.windowManager.sway = {
    enable = true;
    wrapperFeatures.gtk = true; # Fixes common issues with GTK 3 apps
    package = pkgs.swayfx;
    checkConfig = false;
    config = rec {
      defaultWorkspace = "workspace number 1";
      input."*" = {
          xkb_layout = "fr";
      };
      modifier = "Mod4";
      # Use kitty as default terminal
      terminal = "alacritty";
      menu = "rofi -show drun";
      startup = [
        { command = "autotiling-rs"; }
        { command = "swaync"; }
        { command = "swww-daemon --format xrgb"; }
      ];
      window = {
        border = 1;
        titlebar = false;
      };
      bars = [
        {
          command = "waybar";
        }
      ];
      gaps = {
        inner = 8;
        # outer = 4;
      };
      colors = {
        background = colorScheme.base00;
        focused = {
          background = colorScheme.base00;
          border = colorScheme.base0C;
          childBorder = colorScheme.base0C;
          indicator = colorScheme.base0C;
          text = colorScheme.base05;
        };
        focusedInactive = {
          background = colorScheme.base00;
          border = colorScheme.base0B;
          childBorder = colorScheme.base0B;
          indicator = colorScheme.base0B;
          text = colorScheme.base05;
        };
        unfocused = {
          background = colorScheme.base00;
          border = colorScheme.base0A;
          childBorder = colorScheme.base0A;
          indicator = colorScheme.base0A;
          text = colorScheme.base05;
        };
        urgent = {
          background = colorScheme.base00;
          border = colorScheme.base08;
          childBorder = colorScheme.base08;
          indicator = colorScheme.base08;
          text = colorScheme.base05;
        };
        placeholder = {
          background = colorScheme.base00;
          border = colorScheme.base02;
          childBorder = colorScheme.base02;
          indicator = colorScheme.base02;
          text = colorScheme.base05;
        };
      };
      keybindings = lib.mkOptionDefault {
        # Workspaces
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
        "${modifier}+Shift+ampersand" = "move container to workspace number 1";
        "${modifier}+Shift+eacute" = "move container to workspace number 2";
        "${modifier}+Shift+quotedbl" = "move container to workspace number 3";
        "${modifier}+Shift+apostrophe" = "move container to workspace number 4";
        "${modifier}+Shift+parenleft" = "move container to workspace number 5";
        "${modifier}+Shift+minus" = "move container to workspace number 6";
        "${modifier}+Shift+egrave" = "move container to workspace number 7";
        "${modifier}+Shift+underscore" = "move container to workspace number 8";
        "${modifier}+Shift+ccedilla" = "move container to workspace number 9";
        "${modifier}+Shift+agrave" = "move container to workspace number 10";

        "${modifier}+Shift+n" = "exec swaync-client -t -sw";
        # Sound
        "XF86AudioRaiseVolume" = "exec wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%+";
        "XF86AudioLowerVolume" = "exec wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%-";
        "XF86AudioMute" = "exec wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle";

      };
    };
    extraConfig = ''
      corner_radius 8
      blur enable
      blur_xray off
      blur_passes 3
      blur_radius 5
    '';
  };
}