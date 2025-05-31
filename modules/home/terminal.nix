{ ... }:
{
  programs = {
    kitty = {
        enable = true;
        enableGitIntegration = true;
        font = {
            name = "JetBrains Mono";
            size = 16;
        };
    };
    alacritty = {
      enable = true;
      settings = {
        window = {
          opacity = 0.7;
          blur = true;
          padding = {
            x = 8;
            y = 8;
          };
        };
        font = {
          normal = {
            family = "JetBrains Mono";
            size = 16;
          };
        }
      };
    };
  };
}