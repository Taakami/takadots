{ colorScheme, ... }:
{
  services.ghostty = {
    enable = true;
    theme = "taka";
    themes = {
      taka = {
        background = colorScheme.base00;
        foreground = colorScheme.base05;
        cursor-color = colorScheme.base05;
        palette = [
          "0=${colorScheme.base00}"
          "1=${colorScheme.base01}"
          "2=${colorScheme.base02}"
          "3=${colorScheme.base03}"
          "4=${colorScheme.base04}"
          "5=${colorScheme.base05}"
          "6=${colorScheme.base06}"
          "7=${colorScheme.base07}"
          "8=${colorScheme.base08}"
          "9=${colorScheme.base09}"
          "10=${colorScheme.base0A}"
          "11=${colorScheme.base0B}"
          "12=${colorScheme.base0C}"
          "13=${colorScheme.base0D}"
          "14=${colorScheme.base0E}"
          "15=${colorScheme.base0F}"
        ];
        selection-background = colorScheme.base;
        selection-foreground = colorScheme.base;
      };
    };
  };
}