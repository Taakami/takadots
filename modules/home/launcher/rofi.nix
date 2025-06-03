{ pkgs, ... }:
{
  programs.rofi = {
    enable = true;
    package = pkgs.rofi-wayland;
    font = "JetBrains Mono 14";
    terminal = pkgs.alacritty;
    modes = [
      "window"
      "drun"
      "run"
      "calc"
    ];
    plugins = with pkgs; [
      rofi-calc
    ];
  };
}