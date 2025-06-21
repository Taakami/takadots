{ pkgs, ... }:
{
  stylix.targets.nushell.enable = true;
  programs.nushell = {
    enable = true;
    settings = {
      show_banner = false;
    };
    plugins = with pkgs.nushellPlugins; [
      query
      highlight
    ];
  };
}