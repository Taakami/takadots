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
          opacity = 0.5;
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
            background = colorScheme.base00;
            foreground = colorScheme.base05;
          };
          cursor = {
            text = colorScheme.base00;
            cursor = colorScheme.base05;
          };
          normal = {
            black = colorScheme.base01;
            red = colorScheme.base08;
            green = colorScheme.base0B;
            yellow = colorScheme.base0A;
            blue = colorScheme.base0D;
            magenta = colorScheme.base0E;
            cyan = colorScheme.base0C;
            white = colorScheme.base05;
          };
          bright = {
            black = colorScheme.base02;
            red = colorScheme.base08;
            green = colorScheme.base0B;
            yellow = colorScheme.base0A;
            blue = colorScheme.base0D;
            magenta = colorScheme.base0E;
            cyan = colorScheme.base0C;
            white = colorScheme.base07;
          };
          indexed_colors = [
            { index = 16; color = colorScheme.base09; }
            { index = 17; color = colorScheme.base0F; }
            { index = 18; color = colorScheme.base01; }
            { index = 19; color = colorScheme.base02; }
            { index = 20; color = colorScheme.base04; }
            { index = 21; color = colorScheme.base06; }
          ];
        };
      };
    };
  };
}