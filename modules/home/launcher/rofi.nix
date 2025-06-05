{ pkgs, colorScheme, ... } :
{
  programs.rofi = {
    enable = true;
    package = pkgs.rofi-wayland;
    font = "JetBrains Mono 14";
    terminal = "${pkgs.alacritty}/bin/alacritty";
    modes = [
      "window"
      "drun"
      "run"
      "calc"
    ];
    plugins = with pkgs; [
      rofi-calc
      rofi-network-manager
    ];
  };
}