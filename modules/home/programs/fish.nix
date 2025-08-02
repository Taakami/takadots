{...}: {
  stylix.targets.fish.enable = false;
  programs.fish = {
    enable = false;
    shellAbbrs = {
      nix-switch = "nh os switch";
      nix-update = "nh os switch --update";
      nix-clean = "nh clean all --keep 5";
    };
  };
}
