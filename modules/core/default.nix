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
  system.stateVersion = "25.05";
  nix.settings.experimental-features = [
    "nix-command"
    "flakes"
  ];
  console.keyMap = "fr";

  environment.systemPackages = with pkgs; [
    grim # screenshot functionality
    slurp # screenshot functionality
    wl-clipboard # wl-copy and wl-paste for copy/paste from stdin / stdout
    autotiling-rs
    brightnessctl
    wev
  ];
  fonts.packages = with pkgs; [
    nerd-fonts.jetbrains-mono
    jetbrains-mono
    nerd-fonts.symbols-only
    twemoji-color-font
    noto-fonts-emoji
  ];
}