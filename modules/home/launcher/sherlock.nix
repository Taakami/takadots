{inputs, pkgs, ...}:
{
  # imports = [
  #   inputs.sherlock.homeManagerModules.default
  # ];

  # programs.sherlock = {
  #   enable = true;
  #   settings = null;
  # };
  home.packages = with pkgs; [
    sherlock-launcher
  ];
}