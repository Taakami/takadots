{ pkgs, ... }:
{
    environment.systemPackages = with pkgs; [
        pavucontrol                 # Volume control
        # networkmanagerapplet        # Network manager applet
        wl-clipboard                # wl-copy and wl-paste for copy/paste from stdin / stdout
        brightnessctl               # Backlight control
        wev                         # Wayland event viewer
        wayneko
        font-manager
    ];
}