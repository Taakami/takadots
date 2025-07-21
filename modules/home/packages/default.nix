{ pkgs, ... }:
{
  home.packages = with pkgs; [
    gtrash # trash management
    has # detect package
    pastel # show colors !
    tlrc # lazy man pages
    dysk # disk usage overview
    dua # disk usage analyzer

    imagemagick # img cli
    ffmpeg # video cli
    ueberzugpp # visualize img in term
    
    obsidian # markdown note taking app

    alejandra # nix formatter
    eslint # js linter
    nodePackages.nodejs # nodejs
    nodePackages.pnpm # node package manager

    rofi-network-manager # rofi network manager

    pokeget-rs # pokemon sprites
  ];
}