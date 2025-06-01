{ ... }:
{
  imports = [
    ./discord.nix               # Discord
    ./editor.nix                # Text editors
    ./programs.nix              # Programs
    ./rofi.nix                  # App launcher
    ./services.nix              # Services
    ./spotify.nix               # Spotify
    ./sway.nix                  # Window manager
    ./swaync.nix                # Notifications
    ./terminal.nix              # Terminal emulators
    ./waybar.nix                # Status bar
    ./zen-browser.nix           # Browser
  ];
}