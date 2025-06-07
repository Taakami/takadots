{ inputs, config, pkgs, ... }:
{
  imports = [
    inputs.stylix.homeModules.stylix
  ];
  stylix = {
    enable = true;
    autoEnable = false;
    base16Scheme = {
      author = "Takami";
      scheme = "Taka";
      slug = "taka";
      base00 = "#171924";
      base01 = "#35394d";
      base02 = "#3c4054";
      base03 = "#4e5269";
      base04 = "#848aa6";
      base05 = "#adb5d6";
      base06 = "#d2d7ed";
      base07 = "#e2e8f9";
      base08 = "#bc4ad8";
      base09 = "#e65ec8";
      base0A = "#eb73df";
      base0B = "#c4a4eb";
      base0C = "#b1f2f5";
      base0D = "#71bde6";
      base0E = "#8e7df2";
      base0F = "#7463e4";
    };
    cursor = {
      package = pkgs.volantes-cursors;
      name = "volantes_cursors";
      size = 32;
    };
    fonts = {
      serif = config.stylix.fonts.monospace;
      sansSerif = config.stylix.fonts.monospace;
      monospace = {
        package = pkgs.jetbrains-mono;
        name = "JetBrains Mono";
      };
      emoji = {
        package = pkgs.noto-fonts-emoji;
        name = "Noto Color Emoji";
      };
    };
    opacity = {
      applications = 0.7;
      desktop = 0.7;
      popups = 0.5;
      terminal = 0.5;
    };
    overlays.enable = true;
    polarity = "dark";
    targets = {
      gtk.enable = true;
      xfce.enable = true;
    };
  };
}