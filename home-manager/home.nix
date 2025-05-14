# This is your home-manager configuration file
# It's managed by home-manager, through Nix Flakes.
{
  config,
  pkgs,
  inputs, # if you passed specialArgs to home-manager in flake.nix
  ...
}: {
  # Home Manager needs a bit of information about you and the paths it should
  # manage.
  home.username = "taka"; # Replace 'your-username' with your actual username
  home.homeDirectory = "/home/taka"; # Replace 'your-username' with your actual username

  # This value determines the Home Manager release that Home Manager
  # behaves like. It's used to manage configuration changes between
  # releases, ensuring reproducible builds. Before changing this value,
  # consult the Home Manager release notes.
  home.stateVersion = "23.11"; # Please read the comment before changing.

  # The home.packages option allows you to install Nix packages into your
  # environment.
  home.packages = with pkgs; [
    # # Adds the 'hello' command to your environment. It prints a friendly
    # # greeting.
    # pkgs.hello

    # # It is sometimes useful to fine-tune packages, for example, by applying
    # # overrides.
    # pkgs.firefox.override {
    #   cfg = {
    #     enablePlasmaBrowserIntegration = true;
    #   };
    # }
  ];

  # Home Manager is pretty good at managing dotfiles. Simply specify the
  # contents of the file and Home Manager will create symbolic links in the
  # appropriate locations.
  # home.file.".config/hypr/hyprland.conf".text = ''
  #   # See https://wiki.hyprland.org/Configuring/Variables/
  #   # monitor=,preferred,auto,1
  #   # exec-once = waybar & hyprpaper & firefox
  #   # input {
  #   #   kb_layout = us
  #   # }
  # '';

  # You can also manage environment variables through Home Manager.
  home.sessionVariables = {
    # EDITOR = "vim";
  };

  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;

  # Basic shell configuration
  programs.bash.enable = true;
  programs.zsh = {
    enable = true;
    # ohMyZsh.enable = true; # If you want to use Oh My Zsh
  };

  # Git configuration
  programs.git = {
    enable = true;
    userName = "Your Name";
    userEmail = "your-email@example.com";
  };

  # Example: Configure Kitty terminal
  programs.kitty = {
    enable = true;
    # font.name = "JetBrainsMono Nerd Font";
    # font.size = 11;
    # settings = {
    #   scrollback_lines = 10000;
    #   enable_audio_bell = false;
    # };
  };

  # Add any other home-manager modules you want to use here
  # For example, for neovim:
  # programs.neovim = {
  #   enable = true;
  #   viAlias = true;
  #   vimAlias = true;
  #   # plugins = with pkgs.vimPlugins; [ ... ];
  #   # extraConfig = ''
  #   #   set number
  #   # '';
  # };

}