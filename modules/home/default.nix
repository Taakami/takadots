{ ... }:
{
  imports = [
    ./discord.nix               # Discord
    ./programs.nix              # Programs
    ./rofi.nix                  # App launcher
    ./sway.nix                  # Window manager
    ./swaync.nix                # Notifications
    ./waybar.nix                # Status bar
    ./zen-browser.nix           # Browser
  ];