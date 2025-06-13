{pkgs, ...}:
{
  home.packages = with pkgs; [
    alejandra
    eslint
  ];
  home.packages = with pkgs.nodePackages; [
    nodejs
    pnpm
  ];
}