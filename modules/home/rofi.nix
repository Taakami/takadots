{ pkgs, ... }:
{
  programs.rofi = {
    enable = true;
    package = pkgs.rofi-wayland;
    font = "JetBrains Mono 14";
    plugins = with pkgs; [
      rofi-calc
    ];
  };
}