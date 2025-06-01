{ colorScheme, ... }:
{
  programs.waybar = {
    enable = true;
    settings = {
        mainBar = {
        layer = "top";
        position = "top";
        modules-left = [ "sway/workspaces" "sway/mode" ];
        modules-center = [ "sway/window" ];
        modules-right = [ "pulseaudio" "battery" "clock" "backlight" "network" ];
        "sway/workspaces" = {
          all-outputs = true;
          persistent-workspaces = {
            "1" = [];
            "2" = [];
            "3" = [];
            "4" = [];
            "5" = [];
            "6" = [];
            "7" = [];
            "8" = [];
            "9" = [];
          };
        };
        pulseaudio = {
          on-click = "pavucontrol";
        };
        battery = {
          states = {
            warning = 30;
            critical = 15;
          };
          format-icons = ["" "" "" "" ""];
        };
        clock = {
          timezone = "Europe/Paris";
          format = " {:%H:%M}";
          on-click = "gnome-calendar";
        };
        backlight = {
          format = "{icon} {percentage}%";
          format-icons = [ "" "" ];
        };
        network = {
          format-wifi = " {essid} ({signalStrength}%)";
          format-disconnected = "󱘖";
          on-click = "networkmanagerapplet";
          tooltip-format = " {bandwidthUpBits} /  {bandwidthDownBits}";
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
        color: ${colorScheme.base05};
        box-shadow: none;
        text-shadow: none;
      }
      window#waybar {
        background: none;
      }
      #workspaces {
        margin-top: 8px;
        margin-left: 8px;
        margin-right: 4px;
        background-color: ${colorScheme.base01};
        border-radius: 8px;
        padding: 4px;
      }
      #workspaces button {
        padding-left: 5px;
        padding-right: 5px;
        border-radius: 8px;
        margin-right: 4px;
      }
      #workspaces button.focused {
        background-color: ${colorScheme.base0D};
        color: ${colorScheme.base00};
      }
      #window, #mode, #pulseaudio, #battery, #clock, #backlight, #network {
        margin-top: 8px;
        margin-right: 4px;
        padding-right: 4px;
        padding-left: 4px;
        background-color: ${colorScheme.base01};
        border-radius: 8px;
      }
      #workspaces button:hover,
      #clock:hover,
      #pulseaudio:hover,
      #backlight:hover,
      #network:hover {
        background-color: ${colorScheme.base0D};
        color: ${colorScheme.base00};
      }
      #battery.warning {
        background-color: ${colorScheme.base0A};
        color: ${colorScheme.base00};
      }
      #battery.critical {
        background-color: ${colorScheme.base08};
        color: ${colorScheme.base00};
      }
      #network {
        margin-left: 8px;
      }
    '';
  };
}