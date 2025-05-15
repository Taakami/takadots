{ ... }:
{
  programs.thunar = {
    enable = true;

    plugins = with pkgs.xfce; [
        thunar-archive-plugin
        thunar-volman
    ];
  };
  programs.xfconf.enable = true;
}