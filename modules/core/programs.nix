{
  username,
  pkgs,
  inputs,
  ...
}: {
  imports = [inputs.niri.nixosModules.niri];

  programs = {
    dconf.enable = true;
    xfconf.enable = true;
    zsh.enable = true;
    thunar = {
      enable = true;
      plugins = with pkgs.xfce; [
        thunar-archive-plugin # Requires an Archive manager like file-roller, ark, etc
        thunar-volman
        thunar-vcs-plugin
      ];
    };
    file-roller.enable = true;
    nh = {
      enable = true;
      clean = {
        enable = true;
        extraArgs = "--keep-since 7d --keep 5";
        dates = "weekly";
      };
      flake = "/home/${username}/takadots";
    };
    niri = {
      enable = true;
      package = pkgs.niri-stable;
    };
  };
  environment.pathsToLink = ["/share/zsh"];
}
