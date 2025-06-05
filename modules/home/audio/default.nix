{ ... }:
{
  imports = [
    ./bluetooth.nix       # Bluetooth control support
    ./cava.nix            # Cava audio visualizer
    ./spotify.nix         # Spotify client
  ];
}