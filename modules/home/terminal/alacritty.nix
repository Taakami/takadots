{ ... }:
{
  stylix.targets.alacritty.enable = true;
  programs.alacritty = {
    enable = true;
    settings = {
      window = {
        blur = true;
        padding = {
          x = 8;
          y = 8;
        };
      };
    };
  };
}