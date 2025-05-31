{ colorScheme,... }:
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
            background = "#${colorScheme.palette.base00}";
            foreground = "#${colorScheme.palette.base05}";
          };
          cursor = {
            text = "#${colorScheme.palette.base00}";
            cursor = "#${colorScheme.palette.base05}";
          };
          normal = {
            black = "#${colorScheme.palette.base01}";
            red = "#${colorScheme.palette.base08}";
            green = "#${colorScheme.palette.base0B}";
            yellow = "#${colorScheme.palette.base0A}";
            blue = "#${colorScheme.palette.base0D}";
            magenta = "#${colorScheme.palette.base0E}";
            cyan = "#${colorScheme.palette.base0C}";
            white = "#${colorScheme.palette.base05}";
          };
          bright = {
            black = "#${colorScheme.palette.base02}";
            red = "#${colorScheme.palette.base08}";
            green = "#${colorScheme.palette.base0B}";
            yellow = "#${colorScheme.palette.base0A}";
            blue = "#${colorScheme.palette.base0D}";
            magenta = "#${colorScheme.palette.base0E}";
            cyan = "#${colorScheme.palette.base0C}";
            white = "#${colorScheme.palette.base07}";
          };
          indexed_colors = [
            { index = 16; color = "#${colorScheme.palette.base09}"; }
            { index = 17; color = "#${colorScheme.palette.base0F}"; }
            { index = 18; color = "#${colorScheme.palette.base01}"; }
            { index = 19; color = "#${colorScheme.palette.base02}"; }
            { index = 20; color = "#${colorScheme.palette.base04}"; }
            { index = 21; color = "#${colorScheme.palette.base06}"; }
          ];
        };
      };
    };
  };
}