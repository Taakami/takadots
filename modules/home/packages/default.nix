{ pkgs, ... }:
{
  home.packages = with pkgs; [
    gtrash # trash management
    has # detect package
    pastel # show colors !
    tlrc # lazy man pages
    dysk # disk usage overview
    dua # disk usage analyzer
    calcure # calendar

    imagemagick # img cli
    ffmpeg # video cli
    ueberzugpp # visualize img in term
    
    obsidian # markdown note taking app

    alejandra # nix formatter
    eslint # js linter
    nodePackages.nodejs # nodejs
    nodePackages.pnpm # node package manager
    # ni # auto use the good node package manager
    nil # nix language server

    rofi-network-manager # rofi network manager

    pokeget-rs # pokemon sprites
    github-desktop #github desktop app
    waytrogen # wallpaper manager
  ];
}