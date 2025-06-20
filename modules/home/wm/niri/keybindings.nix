{
  config,
  ...
}: {
  programs.niri.settings.binds = with config.lib.niri.actions; {
    # Volume
    "XF86AudioRaiseVolume".action = spawn "wpctl" "set-volume" "@DEFAULT_AUDIO_SINK@" "5%+";
    "XF86AudioLowerVolume".action = spawn "wpctl" "set-volume" "@DEFAULT_AUDIO_SINK@" "5%-";
    "XF86AudioMute".action = spawn "wpctl" "set-mute" "@DEFAULT_AUDIO_SINK@" "toggle";

    # Apps
    
    "Mod+Space".action = spawn "rofi" "-show" "combi" "-modes" "combi" "-combi-modes" "'window,drun,run'";
    "Mod+Return".action = spawn "alacritty";
    "Mod+Shift+N".action = spawn "swaync-client" "-t" "-sw";

    # Other
    "Mod+Q".action = close-window;
    "Mod+O".action = toggle-overview;

    # Workspace
    "Mod+Ampersand".action = focus-workspace 1;
    "Mod+Eacute".action = focus-workspace 2;
    "Mod+QuoteDbl".action = focus-workspace 3;
    "Mod+Apostrophe".action = focus-workspace 4;
    "Mod+ParenLeft".action = focus-workspace 5;
    "Mod+Minus".action = focus-workspace 6;
    "Mod+Egrave".action = focus-workspace 7;
    "Mod+Underscore".action = focus-workspace 8;
    "Mod+CCedilla".action = focus-workspace 9;
    "Mod+Agrave".action = focus-workspace 10;
    "Mod+Shift+Ampersand".action.move-column-to-workspace = 1;
    "Mod+Shift+Eacute".action.move-column-to-workspace = 2;
    "Mod+Shift+QuoteDbl".action.move-column-to-workspace = 3;
    "Mod+Shift+Apostrophe".action.move-column-to-workspace = 4;
    "Mod+Shift+ParenLeft".action.move-column-to-workspace = 5;
    "Mod+Shift+Minus".action.move-column-to-workspace = 6;
    "Mod+Shift+Egrave".action.move-column-to-workspace = 7;
    "Mod+Shift+Underscore".action.move-column-to-workspace = 8;
    "Mod+Shift+CCedilla".action.move-column-to-workspace = 9;
    "Mod+Shift+Agrave".action.move-column-to-workspace = 10;

    "Mod+U".action = focus-workspace-down;
    "Mod+I".action = focus-workspace-up;
    "Mod+Ctrl+U".action = move-column-to-workspace-down;
    "Mod+Ctrl+I".action = move-column-to-workspace-up;

    # Window / column
    "Mod+R".action = switch-preset-column-width;
    "Mod+Shift+R".action = switch-preset-window-height;
    "Mod+Ctrl+R".action = reset-window-height;
    "Mod+F".action = maximize-column;
    "Mod+Shift+F".action = fullscreen-window;
    "Mod+Ctrl+F".action = expand-column-to-available-width;
    "Mod+Ctrl+C".action = center-visible-columns;

    "Mod+Down".action = focus-window-down;
    "Mod+Left".action = focus-column-left;
    "Mod+Up".action = focus-window-up;
    "Mod+Right".action = focus-column-right;
    "Mod+H".action = focus-column-left;
    "Mod+J".action = focus-window-down;
    "Mod+K".action = focus-window-up;
    "Mod+L".action = focus-column-right;
    "Mod+Ctrl+Down".action = move-window-down;
    "Mod+Ctrl+Left".action = move-column-left;
    "Mod+Ctrl+Up".action = move-window-up;
    "Mod+Ctrl+Right".action = move-column-right;
    "Mod+Ctrl+H".action = move-column-left;
    "Mod+Ctrl+J".action = move-window-down;
    "Mod+Ctrl+K".action = move-window-up;
    "Mod+Ctrl+L".action = move-column-right;

    "Mod+Shift+Left".action = set-column-width "-10%";
    "Mod+Shift+Right".action = set-column-width "+10%";
    "Mod+Shift+Down".action = set-window-height "-10%";
    "Mod+Shift+Up".action = set-window-height "+10%";
    "Mod+Shift+H".action = set-column-width "-10%";
    "Mod+Shift+J".action = set-window-height "-10%";
    "Mod+Shift+K".action = set-window-height "+10%";
    "Mod+Shift+L".action = set-column-width "+10%";

    "Mod+Home".action = focus-column-first;
    "Mod+End".action = focus-column-last;

    "Mod+W".action = toggle-column-tabbed-display;
  };
}