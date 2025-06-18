{ inputs, config, pkgs, ... }:
{
  # imports = [
  #   inputs.stylix.homeModules.stylix
  # ];
  stylix = {
    iconTheme = {
      enable = true;
      package = pkgs.fluent-icon-theme;
      light = "Fluent";
      dark = "Fluent";
    };
    targets = {
      gtk.enable = true;
      xfce.enable = true;
    };
  };
}