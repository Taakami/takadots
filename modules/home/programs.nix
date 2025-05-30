{ ... }:
{
  programs = {
    kitty = {
        enable = true;
        enableGitIntegration = true;
        font = {
            name = "JetBrainsMono";
            size = 16;
        };
    };
    alacritty.enable = true;
    vscode.enable = true;
    micro.enable = true;
  };
}