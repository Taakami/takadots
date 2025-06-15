{pkgs, ...}:
{
  home.packages = with pkgs; [
    alejandra
    eslint
    nodePackages.nodejs
    nodePackages.pnpm
  ];
}