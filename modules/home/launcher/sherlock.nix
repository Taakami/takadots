{inputs, ...}:
{
  imports = [
    inputs.sherlock.homeManagerModules.default
  ];

  programs.sherlock = {
    enable = true;
    settings = {
      config = {
        default_apps = {
          terminal = "alacritty";
        };
      };
      style = null;
    };
  };
}