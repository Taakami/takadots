{ ... }:
{
  imports = [
    ./waybar            # bar
    ./clipse.nix        # Clipboard history manager
    ./stylix.nix        # Stylix
    ./playerctl.nix     # Media player control
    ./swaync.nix        # Notifications
    ./wallpaper.nix     # Wallpaper
    ./wob.nix           # Overlay
    ./yazi.nix          # file manager
  ];
}