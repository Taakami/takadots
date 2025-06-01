{ pkgs, ... }:
{
  imports = [
    ./bootloader.nix
    ./hardware.nix
    ./i18n.nix
    ./network.nix
    ./packages.nix
    ./security.nix
    ./services.nix
    ./thunar.nix
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