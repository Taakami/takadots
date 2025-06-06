{ ... }:
{
  imports = [
    ./bat.nix               # cat replacement
    ./btop.nix              # System monitor
    ./dysk.nix              # Disk usage analyzer
    ./eza.nix               # ls replacement
    ./fastfetch.nix         # Fastfetch system information tool
    ./fd.nix                # fd file finder
    ./fzf.nix               # Fuzzy finder
    ./gtrash.nix            # Trash management tool
    ./has.nix               # Command line tool for checking if a command exists
    ./jq.nix                # jq JSON processor
    ./pastel.nix            # Color manipulation tool
    ./tldr.nix              # TLDR pages
    ./zoxide.nix            # Zoxide directory navigation tool
  ];
}