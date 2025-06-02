{ ... }:
{
  imports = [
    ./bootloader.nix
    ./filemanager.nix
    ./fonts.nix
    ./hardware.nix
    ./i18n.nix
    ./network.nix
    ./nh.nix
    ./packages.nix
    ./programs.nix
    ./security.nix
    ./services.nix
    ./system.nix
    ./user.nix
  ];
}