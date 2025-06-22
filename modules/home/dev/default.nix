{ ... }:
{
  imports = [
    ./neovim.nix            # Neovim
    ./vscode.nix            # Visual Studio Code
  ];
  programs = {
    git = {
        enable = true;
        userName = "Taakami";
        userEmail = "dastan39@outlook.fr";
    };
    gitui.enable = true;
  };
  home.packages = with pkgs; [
    alejandra
    eslint
    nodePackages.nodejs
    nodePackages.pnpm
  ];
}