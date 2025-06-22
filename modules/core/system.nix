{ pkgs, inputs, ... }:
{
  # imports = [ inputs.niri.nixosModules.niri ];
  nix = {
    settings = {
      auto-optimise-store = true;
      experimental-features = [
        "nix-command"
        "flakes"
      ];
      extra-substituters = [
        "https://yazi.cachix.org"
        "https://niri.cachix.org"
      ];
      extra-trusted-public-keys = [
        "yazi.cachix.org-1:Dcdz63NZKfvUCbDGngQDAZq6kOroIrFoyO064uvLh8k="
        "niri.cachix.org-1:Wv0OmO7PsuocRKzfDoJ3mulSl7Z6oezYhGhR+3W2964="
      ];
    };
  };

  nixpkgs.config.allowUnfree = true;
  nixpkgs.overlays = [
    inputs.niri.overlays.niri
    # inputs.nix-vscode-extensions.overlays.default
  ];
  system.stateVersion = "25.05";
}