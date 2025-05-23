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
        modules-right = [ "battery" "clock" "backlight" "network" ];
        clock = {
          timezone = "Europe/Paris";
        };
      };
    };
  };
}