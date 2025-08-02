{pkgs, ...}: {
  stylix.targets.nushell.enable = true;
  programs.nushell = {
    enable = true;
    settings = {
      show_banner = false;
    };
    plugins = with pkgs.nushellPlugins; [
      query
      # highlight
    ];
    shellAliases = {
      nix-switch = "nh os switch";
      nix-update = "nh os switch --update";
      nix-clean = "nh clean all --keep 5";
    };
  };
}
