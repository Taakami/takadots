{...}: {
  stylix.targets = {
    alacritty.enable = true;
    foot.enable = true;
    ghostty.enable = false;
    kitty.enable = true;
  };
  programs = {
    alacritty = {
      enable = true;
      settings = {
        window = {
          blur = true;
          padding = {
            x = 8;
            y = 8;
          };
        };
      };
    };
    foot = {
      enable = true;
    };
    ghostty = {
      enable = false;
    };
    kitty = {
      enable = true;
      enableGitIntegration = true;
    };
  };
}
