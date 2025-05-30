{ pkgs, ... }:
{
    environment.systemPackages = with pkgs; [
        pavucontrol
        networkmanagerapplet
        nodejs
        pnpm
        git
    ];
}