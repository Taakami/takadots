{ pkgs, config, ... }:
{
  wsl = {
    enable = true;
    defaultUser = "taka";
    useWindowsDriver = true;
  };
  environment.systemPackages = with pkgs; [
    acpi
    powertop
    neovim
    git
  ];
  programs.sway = {
    enable = true;
    wrapperFeatures.gtk = true;
    package = pkgs.swayfx;
  };
  nixpkgs.config.allowUnfree = true;
  system.stateVersion = "25.05";
}