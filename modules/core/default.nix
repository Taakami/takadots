{ ... }:
{
  imports = [
    ./bluetooth.nix
    ./bootloader.nix
    ./fonts.nix
    ./greeter.nix
    ./hardware.nix
    ./i18n.nix
    ./network.nix
    ./nh.nix
    ./packages.nix
    ./programs.nix
    ./security.nix
    ./services.nix
    ./system.nix
    ./thunar.nix
    ./user.nix
    # ./wm.nix
  ];
}