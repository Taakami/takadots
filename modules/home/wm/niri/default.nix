{
  pkgs,
  inputs,
  ...
}: {
  imports = [
    inputs.niri.homeModules.niri
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
        "waybar"
        "swaync"
        "swww-daemon --format xrgb"
        "clipse -listen"
      ];
    };
  };
}