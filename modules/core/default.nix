{ pkgs, ... }:
{
  imports = [
    ./bootloader.nix
    ./filemanager.nix
    ./hardware.nix
    ./i18n.nix
    ./network.nix
    ./packages.nix
    ./programs.nix
    ./security.nix
    ./services.nix
    ./user.nix
  ];
  nixpkgs.config.allowUnfree = true;
  system.stateVersion = "25.05";
  nix.settings.experimental-features = [
    "nix-command"
    "flakes"
  ];
  console.keyMap = "fr";

  fonts.packages = with pkgs; [
    nerd-fonts.jetbrains-mono
    jetbrains-mono
    nerd-fonts.symbols-only
    twemoji-color-font
    noto-fonts-emoji
  ];
}