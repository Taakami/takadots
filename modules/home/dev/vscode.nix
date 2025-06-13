{ username, pkgs, inputs, ... }:
{
  nixpkgs.overlays = [
    inputs.nix-vscode-extensions.overlays.default
  ];
  stylix.targets.vscode = {
    enable = true;
    profileNames = [
      "default"
      "nix"
      "nuxt"
    ];
  };
  programs.vscode = {
    enable = true;
    profiles = {
      default = {
      };
      nix = {
        extensions = with pkgs; [
          vscode-extensions.bbenoist.nix
          vscode-extensions.kamadorueda.alejandra
        ];
      };
      nuxt = {
        extensions = with pkgs; [
          vscode-extensions.bradlc.vscode-tailwindcss
          vscode-extensions.dbaeumer.vscode-eslint
          vscode-extensions.usernamehw.errorlens
          vscode-extensions.mikestead.dotenv
          vscode-extensions.vue.volar
          vscode-extensions.wix.vscode-import-cost
          vscode-marketplace.google.geminicodeassist
          vscode-marketplace.nuxtr.nuxtr-vscode
        ];
      };
    };
    mutableExtensionsDir = true;
  };
}