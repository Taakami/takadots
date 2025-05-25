{ pkgs, ... }:
{
  # home.packages = with pkgs; [ rofi-wayland ];
  programs.rofi = {
    enable = true;
    package = pkgs.rofi-wayland;
    font = "JetBrains Mono Nerd Font";
    plugins = with pkgs; [
      rofi-calc
    ];
  };
}