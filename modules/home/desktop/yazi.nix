{ inputs, pkgs, ... }:
{
  stylix.targets.yazi.enable = true;
  programs.yazi = {
    enable = true;
    package = inputs.yazi.packages.${pkgs.system}.default;
  };
}