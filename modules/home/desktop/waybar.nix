{ ... }:
{
  stylix.targets.waybar = {
    enable = true;
    addCss = false;
  };
  programs.waybar = {
    enable = true;
    settings = {
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
          format = "{icon}";
          format-muted = "";
          format-icons = [ "" "" "" ];
          on-click = "pavucontrol";
          tooltip = true;
          tooltip-format = "{volume}%"
        };
        battery = {
          format = "{icon}";
          format-icons = ["" "" "" "" ""];
          tooltip-format = "{capacity}% \n Temps restant : ~{time}";
          format-charging = "";
          tooltip-format-charging = "{capacity}% \n Temps de charge : ~{time}";
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
          format = "{icon}";
          format-icons = [ "" "" ];
          tooltip = true;
          tooltip-format = "{percent}%";
        };
        network = {
          format-wifi = "";
          format-disconnected = "󱘖";
          tooltip-format = "{essid} ({signalStrength}%) \n  {bandwidthUpBits} /  {bandwidthDownBits}";
        };
      };
    };
    style = ''
      * {
        min-height: 0;
        border: none;
        border-radius: 0;
        font-family: "JetBrains Mono", monospace, "Symbols Nerd Font";
        font-weight: bold;
        font-size: 12px;
        transition: background 300ms ease-out, color 300ms ease-out;
        box-shadow: none;
        text-shadow: none;
      }
      window#waybar {
        background: none;
        color: @base05;
      }
      tooltip {
        background-color: @base01;
        border-radius: 8px;
        padding: 4px;
      }
      tooltip label {
        color: @base05;
      }
      #workspaces {
        margin-top: 8px;
        margin-left: 8px;
        margin-right: 4px;
        background-color: @base01;
        border-radius: 8px;
        padding: 4px;
      }
      #workspaces button {
        padding-left: 5px;
        padding-right: 5px;
        border-radius: 8px;
        margin-right: 4px;
        color: @base05;
      }
      #workspaces button.focused {
        background-color: @base0D;
        color: @base00;
      }
      #window, #mode, #pulseaudio, #battery, #clock, #backlight, #network {
        margin-top: 8px;
        margin-right: 4px;
        padding-right: 4px;
        padding-left: 4px;
        background-color: @base01;
        border-radius: 8px;
      }
      #workspaces button:hover,
      #clock:hover,
      #pulseaudio:hover {
        background-color: @base0D;
        color: @base00;
      }
      #battery.warning {
        background-color: @base0A;
        color: @base00;
      }
      #battery.critical {
        background-color: @base08;
        color: @base00;
      }
      #pulseaudio.muted {
        background-color: @base0A;
        color: @base00;
      }
      #network {
        margin-left: 8px;
      }
    '';
  };
}