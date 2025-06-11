{ config, pkgs, lib, ... }:

# let
#   stripHash = s: lib.strings.substring 1 (builtins.stringLength s - 1) s;
# in
{
  stylix.targets.foot.enable = true;
  programs.foot = {
    enable = true;
  };
}
