{ config, ... }:
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
      }
      window#waybar {
        padding: 5px;
      }
      #workspaces button {
        border-radius: 4px;
      }
    '';
  };
}