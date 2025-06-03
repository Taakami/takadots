{ config, pkgs, lib, colorScheme, ... }:

let
  stripHash = s: lib.strings.substring 1 (builtins.stringLength s - 1) s;
in {
  programs.foot = {
    enable = true;
    settings = {
      main = {
        font = "JetBrains Mono:size=14";
      };
      colors = {
        foreground = stripHash colorScheme.base05;
        background = stripHash colorScheme.base00;
        regular0   = stripHash colorScheme.base01;
        regular1   = stripHash colorScheme.base08;
        regular2   = stripHash colorScheme.base0B;
        regular3   = stripHash colorScheme.base0A;
        regular4   = stripHash colorScheme.base0D;
        regular5   = stripHash colorScheme.base0E;
        regular6   = stripHash colorScheme.base0C;
        regular7   = stripHash colorScheme.base06;
        bright0    = stripHash colorScheme.base02;
        bright1    = stripHash colorScheme.base08;
        bright2    = stripHash colorScheme.base0B;
        bright3    = stripHash colorScheme.base0A;
        bright4    = stripHash colorScheme.base0D;
        bright5    = stripHash colorScheme.base0E;
        bright6    = stripHash colorScheme.base0C;
        bright7    = stripHash colorScheme.base07;
        "16"       = stripHash colorScheme.base09;
        "17"       = stripHash colorScheme.base0F;
        "18"       = stripHash colorScheme.base01;
        "19"       = stripHash colorScheme.base02;
        "20"       = stripHash colorScheme.base04;
        "21"       = stripHash colorScheme.base06;
      };
    };
  };
}
