{ ... }:
{
  imports = [
    ./bluetooth.nix
    ./bootloader.nix
    # ./dm.nix
    ./fonts.nix
    ./greeter.nix
    ./hardware.nix
    ./i18n.nix
    ./network.nix
    ./nh.nix
    ./niri.nix
    ./packages.nix
    ./programs.nix
    ./security.nix
    ./services.nix
    ./stylix.nix
    ./system.nix
    ./thunar.nix
    ./user.nix
  ];
}