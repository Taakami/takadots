{
  pkgs,
  inputs,
  username,
  ...
}: {
  imports = [
    ./fastfetch.nix # to be a cool kid
    ./discord.nix # messaging app
    ./neovim.nix # coding with style (maybe one day)
    ./rofi.nix # app launcher & dmenu
    ./spotify.nix # music player
    ./vscode.nix # coding like a normie
    ./zed.nix # ide
    ./zen-browser.nix # firefox fork

    ./zsh.nix # the shell that is POSIX
    ./nushell.nix # the shell I love
    ./fish.nix # a random shell
    ./starship.nix # shell prompt

    ./terminals.nix # terminals

    ./niri # scrollable WM

    ./git.nix # git
  ];
  stylix.targets = {
    bat.enable = true;
    btop.enable = true;
    cava = {
      enable = true;
      rainbow.enable = true;
    };
    fzf.enable = true;
    mpv.enable = true;
    yazi.enable = true;
    zathura.enable = true;
  };
  programs = {
    bat.enable = true; # cat replacement
    btop.enable = true; # resources monitoring
    cava.enable = true; # music visualizer
    eza.enable = true; # ls replacement
    fd.enable = true; # find replacement
    fzf.enable = true; # fuzzy finder
    imv.enable = true; # image viewer
    jq.enable = true; # JSON processor
    mpv.enable = true; # video player
    ripgrep.enable = true; # grep replacement
    ripgrep-all.enable = true; # ripgrep but with more file support
    swayimg.enable = true; # image viewer
    thunderbird = {
      enable = true;
      profiles.${username} = {
        isDefault = true;
      };
    }; # email and calendar client
    yazi = {
      enable = true;
      package = inputs.yazi.packages.${pkgs.system}.default;
    }; # file manager
    zathura.enable = true; # pdf viewer
    zoxide.enable = true; # cd replacement
  };
}
