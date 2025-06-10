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
      launchers = [
        {
          name = "App Launcher";
          type = "app_launcher";
          args = {};
          priority = 1;
          home = true;
        }
      ];
      style = null;
    };
  };
}