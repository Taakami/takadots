{ colorScheme,... }:
{
  programs.kitty = {
      enable = true;
      enableGitIntegration = true;
      font = {
          name = "JetBrains Mono";
          size = 16;
      };
  };
}