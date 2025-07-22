{ ... }:
{
  imports = [
    ./bootloader
    ./fonts.nix
    ./greeter.nix
    ./hardware.nix
    ./packages.nix
    ./programs.nix
    ./security.nix
    ./services.nix
    ./stylix.nix
    ./system.nix
    ./user.nix
  ];
}