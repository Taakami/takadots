{ pkgs, ... }:
{
  stylix.targets.vesktop.enable = true;
  home.packages = with pkgs; [
    vesktop
  ];
}