{ pkgs, ... }:
{
    environment.systemPackages = with pkgs; [
        pulseaudioFull
        networkmanagerapplet
    ];
}