{ colorScheme,... }:
{
  stylix.targets.kitty.enable = true;
  programs.kitty = {
      enable = true;
      enableGitIntegration = true;
      # font = {
      #     name = "JetBrains Mono";
      #     size = 16;
      # };
  };
}