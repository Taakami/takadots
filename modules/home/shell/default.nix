{ ... }:
{
  imports = [
    #./pay-respects.nix    # pay-respects command line tool
    #./nix-index.nix       # Nix index command line tool
    ./zsh.nix             # Zsh shell configuration
  ];
}