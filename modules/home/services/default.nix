{ ... }:
{
  imports = [
    ./waybar            # bar
    ./stylix.nix        # Stylix
  ];
  stylix.targets = {
    swaync.enable = true;
  };
  services = {
    clipse.enable = true;
    playerctld.enable = true;
    swaync.enable = true;
    swww.enable = true;
    wob.enable = true;
    mpris-proxy.enable = true; #bluetooth proxy
  };
}