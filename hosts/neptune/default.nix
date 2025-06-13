{ pkgs, config, username, inputs, ... }:
{
  imports = [
    inputs.nixos-wsl.nixosModules.default
  ];
  wsl = {
    enable = true;
    defaultUser = "${username}";
    useWindowsDriver = true;
  };
  environment.systemPackages = with pkgs; [
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
  nix = {
    settings = {
      auto-optimise-store = true;
      experimental-features = [
        "nix-command"
        "flakes"
      ];
    };
  };
}