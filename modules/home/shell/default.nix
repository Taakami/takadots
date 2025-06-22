{ ... }:
{
  imports = [
    ./fish.nix            # Fish
    #./nix-index.nix       # Nix index command line tool
    ./nushell.nix         # Nushell
    #./pay-respects.nix    # pay-respects command line tool
    ./zsh.nix             # Zsh
  ];
  programs.starship = {
    enable = false;
  };
}