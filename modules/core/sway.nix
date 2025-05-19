{ inputs, pkgs, ... }:
{
  programs.sway = {
    enable = true;
    wrapperFeatures.gtk = true;
    package = pkgs.swayfx;
  };
  services.gnome-keyring.enable = true;
  hardware.graphics.enable = true;
}