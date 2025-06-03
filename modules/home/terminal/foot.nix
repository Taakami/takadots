{ colorScheme, builtins,... }:
{
  programs.foot = {
      enable = true;
      settings = {
        main = {
        font = "JetBrains Mono:size=14";
        };
        colors = {
          # Foot expects hex colors without the leading '#'
          foreground = builtins.substring 1 (builtins.stringLength colorScheme.base05 - 1) colorScheme.base05;
          background = builtins.substring 1 (builtins.stringLength colorScheme.base00 - 1) colorScheme.base00;
          regular0 = builtins.substring 1 (builtins.stringLength colorScheme.base01 - 1) colorScheme.base01;
          regular1 = builtins.substring 1 (builtins.stringLength colorScheme.base08 - 1) colorScheme.base08;
          regular2 = builtins.substring 1 (builtins.stringLength colorScheme.base0B - 1) colorScheme.base0B;
          regular3 = builtins.substring 1 (builtins.stringLength colorScheme.base0A - 1) colorScheme.base0A;
          regular4 = builtins.substring 1 (builtins.stringLength colorScheme.base0D - 1) colorScheme.base0D;
          regular5 = builtins.substring 1 (builtins.stringLength colorScheme.base0E - 1) colorScheme.base0E;
          regular6 = builtins.substring 1 (builtins.stringLength colorScheme.base0C - 1) colorScheme.base0C;
          regular7 = builtins.substring 1 (builtins.stringLength colorScheme.base06 - 1) colorScheme.base06;
          bright0 = builtins.substring 1 (builtins.stringLength colorScheme.base02 - 1) colorScheme.base02;
          bright1 = builtins.substring 1 (builtins.stringLength colorScheme.base08 - 1) colorScheme.base08;
          bright2 = builtins.substring 1 (builtins.stringLength colorScheme.base0B - 1) colorScheme.base0B;
          bright3 = builtins.substring 1 (builtins.stringLength colorScheme.base0A - 1) colorScheme.base0A;
          bright4 = builtins.substring 1 (builtins.stringLength colorScheme.base0D - 1) colorScheme.base0D;
          bright5 = builtins.substring 1 (builtins.stringLength colorScheme.base0E - 1) colorScheme.base0E;
          bright6 = builtins.substring 1 (builtins.stringLength colorScheme.base0C - 1) colorScheme.base0C;
          bright7 = builtins.substring 1 (builtins.stringLength colorScheme.base07 - 1) colorScheme.base07;
          "16" = builtins.substring 1 (builtins.stringLength colorScheme.base09 - 1) colorScheme.base09;
          "17" = builtins.substring 1 (builtins.stringLength colorScheme.base0F - 1) colorScheme.base0F;
          "18" = builtins.substring 1 (builtins.stringLength colorScheme.base01 - 1) colorScheme.base01;
          "19" = builtins.substring 1 (builtins.stringLength colorScheme.base02 - 1) colorScheme.base02;
          "20" = builtins.substring 1 (builtins.stringLength colorScheme.base04 - 1) colorScheme.base04;
          "21" = builtins.substring 1 (builtins.stringLength colorScheme.base06 - 1) colorScheme.base06;
        };
      };
  };
}