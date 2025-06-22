{ pkgs, inputs, username, ... }:
{
  imports = [
    ./fastfetch.nix # to be a cool kid
    ./vscode.nix # coding like a normie
    ./neovim.nix # coding with style (maybe one day)
    ./spotify.nix # music player
    ./discord.nix # messaging app
    ./zen-browser.nix # firefox fork
    ./rofi.nix # app launcher & dmenu

    ./zsh.nix # the shell that is POSIX
    ./nushell.nix # the shell I love
    ./fish.nix # a random shell
    ./starship.nix # shell prompt
    
    ./terminals.nix # terminals

    ./niri # scrollable WM
  ];
  stylix.targets = {
    bat.enable = true;
    btop.enable = true;
    fzf.enable = true;
    yazi.enable = true;
    cava = {
      enable = true;
      rainbow.enable = true;
    };
    mpv.enable = true;
    zathura.enable = true;
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
    yazi = {
      enable = true;
      package = inputs.yazi.packages.${pkgs.system}.default;
    }; # file manager
    git = {
        enable = true;
        userName = "Taakami";
        userEmail = "dastan39@outlook.fr";
    }; # git file control system
    gitui.enable = true; # git with ui
    cava.enable = true; # music visualizer
    imv.enable = true; # image viewer
    mpv.enable = true; # video player
    swayimg.enable = true; # image viewer
    zathura.enable = true; # pdf viewer
    thunderbird = {
      enable = true;
      profiles.${username} = {
        isDefault = true;
      };
    }; # email and calendar client
    qutebrowser.enable = false; # TUI browser
  };
}