{ pkgs, config, nix-colors, ... }: {
  imports = [
    nix-colors.homeManagerModules.default
  ];
  colorScheme = {
    slug = "taka";
    name = "Taka";
    author = "Takami";
    palette = {
      base00 = "#171924";
      base01 = "#35394d";
      base02 = "#3c4054";
      base03 = "#4e5269";
      base04 = "#848aa6";
      base05 = "#adb5d6";
      base06 = "#d2d7ed";
      base07 = "#e2e8f9";
      base08 = "#e05151";
      base09 = "#dd8663";
      base0A = "#e0b070";
      base0B = "#d7eaa4";
      base0C = "#b1f2f5";
      base0D = "#71bde6";
      base0E = "#cf84eb";
      base0F = "#d3816a";
    };
  };
}