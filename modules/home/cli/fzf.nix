{ ... }:
{
  stylix.targets.fzf.enable = true;
  programs.fzf = {
    enable = true;
    defaultCommand = "fd --type f";
  };
}