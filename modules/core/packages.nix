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
    ];
}