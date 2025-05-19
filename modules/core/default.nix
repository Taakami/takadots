{ ... }:
{
  imports = [
    ./bootloader.nix
    ./i18n.nix
    ./network.nix
    ./security.nix
    ./sound.nix
    ./sway.nix
    ./user.nix
  ];
  nixpkgs.config.allowUnfree = true;
  system.stateVersion = "25.05";

  environment.systemPackages = with pkgs; [
    grim # screenshot functionality
    slurp # screenshot functionality
    wl-clipboard # wl-copy and wl-paste for copy/paste from stdin / stdout
    swaync # notification system developed by swaywm maintainer
    autotiling-rs
    brightnessctl
  ];
}