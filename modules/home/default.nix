{ ... }:
{
  imports = [
    ./discord.nix               # Discord
    ./programs.nix              # Programs
    ./rofi.nix                  # App launcher
    ./services.nix              # Services
    ./sway.nix                  # Window manager
    ./swaync.nix                # Notifications
    ./waybar.nix                # Status bar
    ./zen-browser.nix           # Browser
  ];
}