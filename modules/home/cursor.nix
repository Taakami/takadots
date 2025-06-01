{ pkgs, ... }:
{
  home.pointerCursor = {
    enable = true;
    package = pkgs.volantes-cursors;
    name = "volantes_cursors";
    sway.enable = true;
    gtk.enable = true;
  };
}