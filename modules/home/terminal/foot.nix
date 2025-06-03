{ colorScheme,... }:
{
  programs.foot = {
      enable = true;
      settings = {
        main = {
        font = "JetBrains Mono:size=14";
        };
        colors = {
          foreground = colorScheme.base05;
          background = colorScheme.base00;
          regular0 = colorScheme.base01; 
          regular1 = colorScheme.base08; 
          regular2 = colorScheme.base0B; 
          regular3 = colorScheme.base0A; 
          regular4 = colorScheme.base0D; 
          regular5 = colorScheme.base0E; 
          regular6 = colorScheme.base0C; 
          regular7 = colorScheme.base06; 
          bright0 = colorScheme.base02;
          bright1 = colorScheme.base08;
          bright2 = colorScheme.base0B;
          bright3 = colorScheme.base0A;
          bright4 = colorScheme.base0D;
          bright5 = colorScheme.base0E;
          bright6 = colorScheme.base0C;
          bright7 = colorScheme.base07;
          "16" = colorScheme.base09;
          "17" = colorScheme.base0F;
          "18" = colorScheme.base01;
          "19" = colorScheme.base02;
          "20" = colorScheme.base04;
          "21" = colorScheme.base06;
        };
      };
  };
}