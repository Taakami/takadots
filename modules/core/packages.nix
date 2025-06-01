{ pkgs, ... }:
{
    environment.systemPackages = with pkgs; [
        pavucontrol                 # Volume control
        networkmanagerapplet        # Network manager applet
        nodejs                      # Node.js runtime 
        pnpm                        # Package manager for Node.js
        git                         # Version control system
        gnome-calendar              # Agenda
        adwaita-icon-theme          # Icon theme for GNOME
        grim                        # screenshot functionality
        slurp                       # screenshot functionality
        wl-clipboard                # wl-copy and wl-paste for copy/paste from stdin / stdout
        autotiling-rs
        brightnessctl               # Backlight control
        wev                         # Wayland event viewer
    ];
}