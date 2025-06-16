{ pkgs, ... }:
{
    programs.thunar = {
        enable = true;
        plugins = with pkgs.xfce; [
            thunar-archive-plugin # Requires an Archive manager like file-roller, ark, etc
            thunar-volman
        ];
    };
    services = {
        gvfs.enable = true;
        tumbler.enable = true;
    };
}