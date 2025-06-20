{ inputs, pkgs, ... }:
{
  home.packages = with pkgs; [ inputs.waytrogen.packages.${system}.default; ];
  services = {
    swww.enable = true;
  };
}