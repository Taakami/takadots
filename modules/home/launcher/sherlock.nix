{inputs, pkgs, ...}:
{
  # imports = [
  #   inputs.sherlock.homeManagerModules.default
  # ];

  # programs.sherlock = {
  #   enable = true;
  #   settings = null;
  # };
  home.package = with pkgs; [
    sherlock-launcher
  ];
}