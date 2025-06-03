{ host, ... }:
{
  imports = [
    # Apps
    ./app/discord.nix           # Discord client
    ./app/obsidian.nix          # Obsidian

    # Audio
    ./audio/cava.nix            # Cava audio visualizer
    ./audio/spotify.nix         # Spotify client

    # CLI
    ./cli/bat.nix               # cat replacement
    ./cli/btop.nix              # System monitor
    ./cli/eza.nix               # ls replacement

    # Desktop
    ./desktop/cursor.nix        # Cursor theme for desktop
    ./desktop/swaync.nix        # Notifications
    ./desktop/swww.nix          # Wallaper
    ./desktop/waybar.nix        # Status bar
    ./desktop/yazi.nix          # Yazi file manager

    # Development
    ./dev/micro.nix             # Micro text editor
    ./dev/vscode.nix            # Visual Studio Code

    # Images
    ./img/swayimg.nix           # Swayimg image viewer

    # Launchers
    ./launcher/rofi.nix         # Rofi application launcher
    ./launcher/walker.nix       # Walker application launcher

    # Shell
    ./shell/zsh.nix             # Zsh shell configuration

    # Terminals
    ./terminal/alacritty.nix    # Alacritty terminal
    ./terminal/foot.nix         # Foot terminal
    # ./terminal/ghostty.nix      # Ghostty terminal
    # ./terminal/kitty.nix        # Kitty terminal

    # Web
    ./web/zen-browser.nix       # Zen browser

    # Windows managers
    ./wm/sway.nix               # Sway window manager
  ];
}