{ inputs, pkgs, ... }:
{
  programs.sway = {
    enable = true;
    wrapperFeatures.gtk = true;
    package = pkgs.swayfx;
  }; 
  services.gnome.gnome-keyring.enable = true;

#   programs.hyprland = {
#     enable = true;
#     package = inputs.hyprland.packages.${pkgs.system}.default;
#     portalPackage =
#       inputs.hyprland.packages.${pkgs.system}.xdg-desktop-portal-hyprland;
#   };

  xdg.portal = {
    enable = true;
    xdgOpenUsePortal = true;
    config = {
      common.default = [ "gtk" ];
    #   hyprland.default = [
    #     "gtk"
    #     "hyprland"
    #   ];
    };

    extraPortals = [ pkgs.xdg-desktop-portal-gtk ];
  };
}