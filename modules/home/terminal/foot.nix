{ config, pkgs, lib, ... }:
{
  stylix.targets.foot.enable = true;
  programs.foot = {
    enable = true;
  };
}
