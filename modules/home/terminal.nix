{ ... }:
{
  programs = {
    kitty = {
        enable = true;
        enableGitIntegration = true;
        font = {
            name = "JetBrains Mono";
            size = 16;
        };
    };
    alacritty = {
      enable = true;
      settings = {
        window = {
          opacity = 0.7;
          blur = true;
          padding = {
            x = 8;
            y = 8;
          };
        };
        font = {
          normal = {
            family = "JetBrains Mono";
          };
        };
        colors = {
          primary = {
            background = "#${config.colorScheme.palette.base00}";
            foreground = "#${config.colorScheme.palette.base05}";
          };
          cursor = {
            text = "#${config.colorScheme.palette.base00}";
            cursor = "#${config.colorScheme.palette.base05}";
          };
          normal = {
            black = "#${config.colorScheme.palette.base01}";
            red = "#${config.colorScheme.palette.base08}";
            green = "#${config.colorScheme.palette.base0B}";
            yellow = "#${config.colorScheme.palette.base0A}";
            blue = "#${config.colorScheme.palette.base0D}";
            magenta = "#${config.colorScheme.palette.base0E}";
            cyan = "#${config.colorScheme.palette.base0C}";
            white = "#${config.colorScheme.palette.base05}";
          };
          bright = {
            black = "#${config.colorScheme.palette.base02}";
            red = "#${config.colorScheme.palette.base08}";
            green = "#${config.colorScheme.palette.base0B}";
            yellow = "#${config.colorScheme.palette.base0A}";
            blue = "#${config.colorScheme.palette.base0D}";
            magenta = "#${config.colorScheme.palette.base0E}";
            cyan = "#${config.colorScheme.palette.base0C}";
            white = "#${config.colorScheme.palette.base07}";
          };
          indexed_colors = [
            { index = 16; color = "#${config.colorScheme.palette.base09}"; }
            { index = 17; color = "#${config.colorScheme.palette.base0F}"; }
            { index = 18; color = "#${config.colorScheme.palette.base01}"; }
            { index = 19; color = "#${config.colorScheme.palette.base02}"; }
            { index = 20; color = "#${config.colorScheme.palette.base04}"; }
            { index = 21; color = "#${config.colorScheme.palette.base06}"; }
          ];
        };
      };
    };
  };
}