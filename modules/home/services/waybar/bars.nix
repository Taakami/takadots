{ ... }:
{
  programs.waybar.settings = {
    mainBar = {
      layer = "top";
      position = "top";
      modules-left = [ "sway/workspaces" "niri/workspaces" "tray" "sway/mode" ];
      modules-center = [ "sway/window" "niri/window" ];
      modules-right = [ "pulseaudio" "battery" "clock" "backlight" "network" ];
      "sway/workspaces" = {
        all-outputs = true;
        persistent-workspaces = {
          "1" = [];
          "2" = [];
          "3" = [];
        };
      };
      "sway/mode" = {
        tooltip = false;
      };
      "sway/window" = {
        max-length = 50;
        rewrite = {
          "(.*) - Zen Browser" = " $1 • 🌍";
          "(.*) - Visual Studio Code" = "$1 • 󰨞";
        };
      };
      "niri/window" = {
        max-length = 50;
        icon = true;
        icon-size = 24;
        rewrite = {
          "(.*) - Zen Browser" = " $1 • 🌍";
          "(.*) - Visual Studio Code" = "$1 • 󰨞";
        };
      };
      tray = {
        icon-size = 16;
        spacing = 4;
      };
      pulseaudio = {
        format = "{icon} {volume}%";
        format-muted = " {volume}%";
        format-icons = [ "" "" "" ];
        on-click = "pavucontrol";
        tooltip = false;
      };
      battery = {
        format = "{icon} {capacity}%";
        format-icons = ["" "" "" "" ""];
        tooltip-format = "Temps restant : ~{time}";
        format-charging = " {capacity}%";
        tooltip-format-charging = "Temps de charge : ~{time}";
        states = {
          warning = 30;
          critical = 15;
        };
      };
      clock = {
        timezone = "Europe/Paris";
        format = " {:%H:%M}";
        tooltip-format = "{:%A, %d %B %Y}";
        on-click = "thunderbird -calendar";
      };
      backlight = {
        format = "{icon} {percent}%";
        format-icons = [ "" "" ];
        tooltip = false;
      };
      network = {
        format-wifi = " {signalStrength}%";
        format-disconnected = "󱘖";
        tooltip-format = "󰴽 {essid}\n {bandwidthUpBits}\n {bandwidthDownBits}";
      };
    };
  };
}