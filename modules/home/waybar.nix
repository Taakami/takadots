{ ... }:
{
  programs.waybar = {
    enable = true;
    settings = {
        mainBar = {
        layer = "top";
        position = "top";
        modules-left = [ "sway/workspaces" ];
        modules-center = [ "sway/window" ];
        modules-right = [ "pulseaudio" "battery" "clock" "backlight" "network" ];
        clock = {
          timezone = "Europe/Paris";
        };
        "sway/workspaces" = {
          all-outputs = true;
        };
        pulseaudio = {
          on-click = "pavucontrol";
        };
        network = {
          on-click = "networkmanagerapplet";
          format-wifi = "{essid} ({signalStrength}%)";
        };
        backlight = {
          on-click = "brightnessctl set +10%";
          on-click-right = "brightnessctl set 10%-";
        };
      };
    };
  };
}