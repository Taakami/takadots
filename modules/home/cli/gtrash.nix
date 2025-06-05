{ pkgs, ... }:
{
  home.packages = with pkgs; [ gtrash ];
}