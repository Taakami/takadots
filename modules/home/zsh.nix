{ hostname, ... }:
{
  programs.zsh = {
    autosuggestion.enable = true;
    syntaxHighlighting.enable = true;
    shellAliases = {
      nix-switch = "nh os switch";
      nix-update = "nh os switch --update";
      nix-clean = "nh clean all --keep 5";
    };
  };
}