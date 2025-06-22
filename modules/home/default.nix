{ pkgs, ... }:
{
  imports = [
    # Services
    ./services
    # Programs
    ./programs
    # Packages
    ./packages
    # Scripts
    ./script
  ];
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