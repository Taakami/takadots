{ pkgs, ... }:
{
    environment.systemPackages = with pkgs; [
        pavucontrol                 # Volume control
        networkmanagerapplet        # Network manager applet
        overskride                  # Bluetooth manager
        git                         # Version control system
        adwaita-icon-theme          # Icon theme for GNOME
        grim                        # screenshot functionality
        slurp                       # screenshot functionality
        wl-clipboard                # wl-copy and wl-paste for copy/paste from stdin / stdout
        brightnessctl               # Backlight control
        wev                         # Wayland event viewer
        wayneko
    ];
}