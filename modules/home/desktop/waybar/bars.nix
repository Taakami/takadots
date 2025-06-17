{ ... }:
{
  programs.waybar.settings = {
    mainBar = {
      layer = "top";
      position = "top";
      modules-left = [ "sway/workspaces" "sway/mode" ];
      modules-center = [ "sway/window" ];
      modules-right = [ "tray" "pulseaudio" "battery" "clock" "backlight" "network" ];
      "sway/workspaces" = {
        all-outputs = true;
        persistent-workspaces = {
          "1" = [];
          "2" = [];
          "3" = [];
          # "4" = [];
          # "5" = [];
          # "6" = [];
          # "7" = [];
          # "8" = [];
          # "9" = [];
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
        format-charging = "";
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
        on-click = "gnome-calendar";
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