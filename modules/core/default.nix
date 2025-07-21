{ ... }:
{
  imports = [
    ./bluetooth.nix
    ./bootloader
    ./fonts.nix
    ./greeter.nix
    ./hardware.nix
    ./i18n.nix
    ./network.nix
    ./niri.nix
    ./packages.nix
    ./programs.nix
    ./security.nix
    ./services.nix
    ./stylix.nix
    ./system.nix
    ./user.nix
  ];
}