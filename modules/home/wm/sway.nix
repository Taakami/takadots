{
  pkgs,
  colorScheme,
  ...
}:
{
  stylix.targets.sway.enable = true;
  wayland.windowManager.sway = {
    enable = true;
    wrapperFeatures.gtk = true; # Fixes common issues with GTK 3 apps
    package = pkgs.swayfx;
    checkConfig = false;
    config = rec {
      output = {
        LVDS-1 = {
          mode = "1366x768@60Hz";
        };
      };
      defaultWorkspace = "workspace number 1";
      # fonts ={
      #   names = [ "JetBrains Mono" "monospace" ];
      #   style = "Bold Semi-Condensed";
      #   size = 11.0;
      # };
      input."*" = {
          xkb_layout = "fr";
      };
      modifier = "Mod4";
      terminal = "alacritty";
      menu = "rofi -show drun";
      startup = [
        { command = "swaync"; }
        { command = "swww-daemon --format xrgb"; }
        { command = "walker --gapplication-service"; }
      ];
      workspaceAutoBackAndForth = true;
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
      # colors = {
      #   background = colorScheme.base00;
      #   focused = {
      #     background = colorScheme.base00;
      #     border = colorScheme.base0C;
      #     childBorder = colorScheme.base0C;
      #     indicator = colorScheme.base0C;
      #     text = colorScheme.base05;
      #   };
      #   focusedInactive = {
      #     background = colorScheme.base00;
      #     border = colorScheme.base0B;
      #     childBorder = colorScheme.base0B;
      #     indicator = colorScheme.base0B;
      #     text = colorScheme.base05;
      #   };
      #   unfocused = {
      #     background = colorScheme.base00;
      #     border = colorScheme.base0A;
      #     childBorder = colorScheme.base0A;
      #     indicator = colorScheme.base0A;
      #     text = colorScheme.base05;
      #   };
      #   urgent = {
      #     background = colorScheme.base00;
      #     border = colorScheme.base08;
      #     childBorder = colorScheme.base08;
      #     indicator = colorScheme.base08;
      #     text = colorScheme.base05;
      #   };
      #   placeholder = {
      #     background = colorScheme.base00;
      #     border = colorScheme.base02;
      #     childBorder = colorScheme.base02;
      #     indicator = colorScheme.base02;
      #     text = colorScheme.base05;
      #   };
      # };
      keybindings = {
        # Apps
        "${modifier}+Return" = "exec ${terminal}";
        "${modifier}+space" = "exec ${menu}";
        "${modifier}+Shift+n" = "exec swaync-client -t -sw";
        "${modifier}+d" = "exec walker";

        # System
        "${modifier}+h" = "focus left";
        "${modifier}+Left" = "focus left";
        "${modifier}+j" = "focus down";
        "${modifier}+Down" = "focus down";
        "${modifier}+k" = "focus up";
        "${modifier}+Up" = "focus up";
        "${modifier}+l" = "focus right";
        "${modifier}+Right" = "focus right";
        "${modifier}+Shift+h" = "move left";
        "${modifier}+Shift+Left" = "move left";
        "${modifier}+Shift+j" = "move down";
        "${modifier}+Shift+Down" = "move down";
        "${modifier}+Shift+k" = "move up";
        "${modifier}+Shift+Up" = "move up";
        "${modifier}+Shift+l" = "move right";
        "${modifier}+Shift+Right" = "move right";
        "${modifier}+Shift+space" = "floating toggle";
        "${modifier}+g" = "focus mode_toggle";
        "${modifier}+Shift+f" = "fullscreen toggle";

        "${modifier}+q" = "kill";
        "${modifier}+Shift+c" = "reload";

        # Modes
        "${modifier}+r" = "mode Resize";
        "${modifier}+F4" = "mode Logout";
        "${modifier}+Shift+a" = "mode Apps";

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

        # Navigation
        "${modifier}+Tab" = "workspace back_and_forth";
        # Sound
        "XF86AudioRaiseVolume" = "exec wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%+";
        "XF86AudioLowerVolume" = "exec wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%-";
        "XF86AudioMute" = "exec wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle";

      };
      modes = {
        Resize = {
          Escape = "mode default";
          Return = "mode default";
          h = "resize shrink width 10 px";
          Left = "resize shrink width 10 px";
          j = "resize grow height 10 px";
          Down = "resize grow height 10 px";
          k = "resize shrink height 10 px";
          Up = "resize shrink height 10 px";
          l = "resize grow width 10 px";
          Right = "resize grow width 10 px";
        };
        Logout = {
          Escape = "mode default";
          Return = "mode default";
          r = "exec systemctl reboot; mode default";
          s = "exec systemctl poweroff; mode default";
        };
        Apps = {
          Escape = "mode default";
          Return = "mode default";
          b = "exec overskride; mode default";
          v = "exec pavucontrol; mode default";
          f = "exec zen-beta; mode default";
        };
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