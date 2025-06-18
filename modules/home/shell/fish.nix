{ ... }:
{
  stylix.targets.fish.enable = true;
  programs.fish = {
    enable = true;
    shellAbbrs = {
      nix-switch = "nh os switch";
      nix-update = "nh os switch --update";
      nix-clean = "nh clean all --keep 5";
    };
  };
}