{ ... }:
{
  imports = [
    ./rofi.nix                  # App launcher
    ./sway.nix                  # Window manager
    ./zen-browser.nix           # Browser
    ./discord.nix               # Discord
    ./swaync.nix                # Notifications
    ./waybar.nix                # Status bar
  ];
  programs.kitty.enable = true;
  programs.git.enable = true;
}