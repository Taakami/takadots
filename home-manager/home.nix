# This file is the entry point for your standalone Home Manager configuration.
# It sets up the basic user environment and imports your shared home modules.
{ lib, pkgs, config, username, inputs, host, ... }:

# username, inputs, host are passed via extraSpecialArgs from flake.nix
# pkgs, lib, config are standard Home Manager module arguments

{
  # Basic Home Manager settings
  home.username = username;
  home.homeDirectory = "/home/${username}"; # Standard convention
  home.stateVersion = "25.05"; # Match your system's state version or user preference

  # Enable the home-manager command-line tool itself
  programs.home-manager.enable = true;

  # Import your shared home configuration modules.
  # This path is relative to this home.nix file.
  # It will import u:\takadots\modules\home\default.nix
  imports = [
    ../modules/home
  ];

  # The `extraSpecialArgs` (username, inputs, host) are available directly
  # as arguments to any imported modules if they are defined to accept them.
  # For example, a module defined as `({ inputs, ... }: { ... })` will receive `inputs`.
  # This is generally the preferred way over using `config.specialArgs`.
}