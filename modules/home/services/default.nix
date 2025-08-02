{...}: {
  imports = [
    ./waybar # bar
  ];
  stylix.targets = {
    swaync.enable = true;
  };
  services = {
    clipse.enable = true; # clipboard history
    playerctld.enable = true; # media control
    swaync.enable = true; # notification center
    swww.enable = true; # wallpaper daemon
    wob.enable = true; # overlay
    mpris-proxy.enable = true; #bluetooth proxy
  };
}
