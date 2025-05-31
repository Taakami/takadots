{ ... }:
{
  imports = [
    # ./colors.nix                # Color scheme
    ./discord.nix               # Discord
    ./editor.nix                # Text editors
    ./programs.nix              # Programs
    ./rofi.nix                  # App launcher
    ./services.nix              # Services
    ./sway.nix                  # Window manager
    ./swaync.nix                # Notifications
    ./terminal.nix              # Terminal emulators
    ./waybar.nix                # Status bar
    ./zen-browser.nix           # Browser
  ];
}