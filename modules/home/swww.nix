{ inputs, pkgs, ... }:
{
  home.packages = (
    with pkgs; [ inputs.swww.packages."${system}".default ]
  );
}