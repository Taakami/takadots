{
  pkgs,
  inputs,
  ...
}: {
  imports = [
    # inputs.niri.homeModules.niri
    inputs.niri.homeModules.stylix
    ./keybindings.nix
    ./style.nix
  ];
  programs.niri = {
    enable = true;
    settings = {
      input = {
        keyboard = {
          numlock = true;
          xkb = {
            layout = "fr";
          };
        };
        power-key-handling.enable = false;
      };
      spawn-at-startup = [
        { command = ["waybar"]; }
        { command = ["swaync"]; }
        { command = ["swww-daemon" "--format" "xrgb"]; }
        { command = ["clipse" "-listen"]; }
      ];
    };
  };
}