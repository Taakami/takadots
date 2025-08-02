{
  username,
  pkgs,
  inputs,
  ...
}: {
  # stylix.targets.vscode = {
  #   enable = true;
  # };
  programs.vscode = {
    enable = true;
    # profiles = {
    # default = {
    # enableExtensionUpdateCheck = false;
    # enableUpdateCheck = false;
    # extensions = with pkgs; [
    # vscode-extensions.bbenoist.nix
    # vscode-extensions.kamadorueda.alejandra
    # vscode-extensions.bradlc.vscode-tailwindcss
    # vscode-extensions.dbaeumer.vscode-eslint
    # vscode-extensions.usernamehw.errorlens
    # vscode-extensions.mikestead.dotenv
    # vscode-extensions.vue.volar
    # vscode-extensions.wix.vscode-import-cost
    # vscode-marketplace.google.geminicodeassist
    # vscode-marketplace.nuxtr.nuxtr-vscode
    # ];
    # };
    # };
  };
}
