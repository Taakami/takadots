{ ... }:
{
  stylix.targets.waybar = {
    enable = true;
    addCss = false;
  };
  programs.waybar = {
    enable = true;
    style = import ./style.nix;
    settings = import ./bars.nix;
  };
}