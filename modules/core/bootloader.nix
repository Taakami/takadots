{ ... }:
{
    boot.loader.grub = {
        enable = true;
        device = "/dev/sda";
        useOSProber = true;
        configurationLimit = 10;
    };
    stylix.targets.grub = {
        enable = true;
        useWallpaper = true;
    };
}