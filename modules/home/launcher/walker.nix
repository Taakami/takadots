{ inputs, lib, ... }:
{
  imports = [ inputs.walker.homeManagerModules.default ];
  programs.walker = {
    enable = true;
    runAsService = true;

    # All options from the config.json can be used here.
    config = lib.mkOptionDefault {
      # search.placeholder = "Example";
      terminal = "alacritty";
      list = {
        height = 200;
      };
      websearch.prefix = "?";
      switcher.prefix = "/";
    };
  };
}