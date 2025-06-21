{ ... }:
{
  imports = [
    ./spotify.nix
  ];
  stylix.targets = {
    cava = {
      enable = true;
      rainbow.enable = true;
    };
    mpv.enable = true;
    zathura.enable = true;
  };
  programs = {
    cava.enable = true;     #music visualizer
    imv.enable = true;      #image viewer
    mpv.enable = true;      #video player
    swayimg.enable = true;  #image viewer
    zathura.enable = true;  #pdf viewer
  };
  services = {
    mpris-proxy.enable = true; #bluetooth proxy
  };
}