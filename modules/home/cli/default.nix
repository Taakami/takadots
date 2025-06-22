{ ... }:
{
  imports = [
    ./fastfetch.nix # to be a cool kid
  ];
  stylix.targets = {
    bat.enable = true;
    btop.enable = true;
    fzf.enable = true;
  };
  programs = {
    bat.enable = true; # cat replacement
    btop.enable = true; # resources monitoring
    eza.enable = true; # ls replacement
    fd.enable = true; # find replacement
    fzf.enable = true; # fuzzy finder
    jq.enable = true; # JSON processor
    zoxide.enable = true; # cd replacement
    ripgrep.enable = true; # grep replacement
    ripgrep-all.enable = true; # ripgrep but with more file support
  };
  home.packages = with pkgs; [
    gtrash # trash management
    has # detect package
    pastel # show colors !
    tldr # lazy man pages
    dysk # disk usage overview
    dua # disk usage analyzer
  ];
}