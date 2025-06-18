{ pkgs, username, ... }:
{
  programs.nh = {
    enable = true;
    clean = {
      enable = true;
      extraArgs = "--keep-since 7d --keep 5";
      dates = "weekly";
    };
    flake = "/home/${username}/takadots";
  };

}