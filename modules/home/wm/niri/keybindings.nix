{
  config,
  ...
}: {
  programs.niri.settings.binds = {
    # Volume
    "XF86AudioRaiseVolume".action.spawn = ["wpctl" "set-volume" "@DEFAULT_AUDIO_SINK@" "5%+"];
    "XF86AudioLowerVolume".action.spawn = ["wpctl" "set-volume" "@DEFAULT_AUDIO_SINK@" "5%+-"];
    "XF86AudioMute".action.spawn = ["wpctl" "set-mute" "@DEFAULT_AUDIO_SINK@" "toggle"];

    # Apps
    "Mod+Space".action.spawn = ["rofi -show drun"];
    "Mod+Return".action.spawn = ["alacritty"];
    "Mod+Shift+N".action.spawn = ["swaync-client" "-t" "-sw"];

    # Other
    "Mod+Q".action.close-window = true;
    "Mod+O".action.toggle-overview = true;

    # Workspace
    "Mod+Ampersand".action.focus-workspace = 1;
    "Mod+Eacute".action.focus-workspace = 2;
    "Mod+QuoteDbl".action.focus-workspace = 3;
    "Mod+Apostrophe".action.focus-workspace = 4;
    "Mod+ParenLeft".action.focus-workspace = 5;
    "Mod+Minus".action.focus-workspace = 6;
    "Mod+Egrave".action.focus-workspace = 7;
    "Mod+Underscore".action.focus-workspace = 8;
    "Mod+CCedilla".action.focus-workspace = 9;
    "Mod+Agrave".action.focus-workspace = 10;
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

    "Mod+U".action.focus-workspace-down = true;
    "Mod+I".action.focus-workspace-up = true;
    "Mod+Ctrl+U".action.move-column-to-workspace-down = true;
    "Mod+Ctrl+I".action.move-column-to-workspace-up = true;

    # Window / column
    "Mod+R".action.switch-preset-column-width = true;
    "Mod+Shift+R".action.switch-preset-column-height = true;
    "Mod+Ctrl+R".action.reset-window-height = true;
    "Mod+F".action.maximize-column = true;
    "Mod+Shift+F".action.fullscreen-window = true;
    "Mod+Ctrl+F".action.expand-column-to-available-width = true;
    "Mod+Ctrl+C".action.center-visible-columns = true;

    "Mod+Down".action.focus-window-down = true;
    "Mod+Left".action.focus-column-left = true;
    "Mod+Up".action.focus-window-up = true;
    "Mod+Right".action.focus-column-right = true;
    "Mod+H".action.move-column-left = true;
    "Mod+J".action.move-window-down = true;
    "Mod+K".action.move-window-up = true;
    "Mod+L".action.move-column-right = true;
    "Mod+Ctrl+Down".action.move-window-down = true;
    "Mod+Ctrl+Left".action.move-column-left = true;
    "Mod+Ctrl+Up".action.move-window-up = true;
    "Mod+Ctrl+Right".action.move-column-right = true;
    "Mod+Ctrl+H".action.move-column-left = true;
    "Mod+Ctrl+J".action.move-window-down = true;
    "Mod+Ctrl+K".action.move-window-up = true;
    "Mod+Ctrl+L".action.move-column-right = true;

    "Mod+Shift+Left".action.set-column-width = "-10%";
    "Mod+Shift+Right".action.set-column-width = "+10%";
    "Mod+Shift+Down".action.set-window-height = "-10%";
    "Mod+Shift+Up".action.set-window-height = "+10%";
    "Mod+Shift+H".action.set-window-width = "-10%";
    "Mod+Shift+J".action.set-window-height = "-10%";
    "Mod+Shift+K".action.set-window-height = "+10%";
    "Mod+Shift+L".action.set-window-width = "+10%";

    "Mod+Home".action.focus-column-first = true;
    "Mod+End".action.focus-column-last = true;

    "Mod+W".action.toggle-column-tabbed-display = true;

  };
}