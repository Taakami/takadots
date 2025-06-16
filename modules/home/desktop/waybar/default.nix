{ ... }:
{
  imports = [
    ./style.nix
    ./bars.nix
  ];
  programs.waybar.enable = true;
}