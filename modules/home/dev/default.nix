{ ... }:
{
  imports = [
    ./git.nix
    ./micro.nix             # Micro text editor
    ./neovim.nix            # Neovim
    ./packages.nix
    ./vscode.nix            # Visual Studio Code
  ];
}