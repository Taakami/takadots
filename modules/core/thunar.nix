{ pkgs, ... }:
{
    programs.thunar.enable = true;
    programs.xfconf.enable = true;
    programs.thunar.plugins = with pkgs.xfce; [
        thunar-archive-plugin # Requires an Archive manager like file-roller, ark, etc
        thunar-volman
    ];
}