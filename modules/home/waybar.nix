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
        clock = {
          timezone = "Europe/Paris";
        };
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
        battery = {
          states = {
            warning = 30;
            critical = 15;
          };
        };
        pulseaudio = {
          on-click = "pavucontrol";
        };
        network = {
          on-click = "networkmanagerapplet";
          format-wifi = "{essid} ({signalStrength}%)";
        };
        backlight = {
          on-click = "brightnessctl set +5%";
          on-click-right = "brightnessctl set 5%-";
        };
      };
    };
    style = ''
      * {
        border: none;
        border-radius: 0;
        background: transparent;
        color: #${colorScheme.palette.base05};
      }
      window#waybar {
        margin: 5px;
      }
      #workspaces button {
        background-color: #${colorScheme.palette.base00};
        border-radius: 8px;
        margin-right: 4px;
      }
      #workspaces button.focused {
        background-color: #${colorScheme.palette.base0D};
        color: #${colorScheme.palette.base00};
      }
      #window {
        background-color: #${colorScheme.palette.base00};
        border-radius: 8px;
      }
      #mode {
        background-color: #${colorScheme.palette.base00};
        border-radius: 8px;
      }
      #pulseaudio {
        background-color: #${colorScheme.palette.base00};
        border-radius: 8px;
        margin-right: 4px;
      }
      #battery {
        background-color: #${colorScheme.palette.base00};
        border-radius: 8px;
        margin-right: 4px;
      }
      #battery.warning {
        background-color: #${colorScheme.palette.base0A};
      }
      #battery.critical {
        background-color: #${colorScheme.palette.base08};
      }
      #clock {
        background-color: #${colorScheme.palette.base00};
        border-radius: 8px;
        margin-right: 4px;
      }
      #backlight {
        background-color: #${colorScheme.palette.base00};
        border-radius: 8px;
        margin-right: 4px;
      }
      #network {
        background-color: #${colorScheme.palette.base00};
        border-radius: 8px;
        margin-right: 4px;
      }
    '';
  };
}