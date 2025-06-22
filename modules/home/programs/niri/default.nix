{
  pkgs,
  inputs,
  config,
  ...
}: {
  imports = [
    ./style.nix
  ];
  stylix.targets.niri.enable = true;
  programs.niri = {
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
      screenshot-path = "~/Pictures/Screenshots/%Y-%m-%d_%H-%M-%S.png";
      environment = {
        NIXOS_OZONE_WL = "1"; # support electron and chromium based apps
        DISPLAY = ":0"; # important for xwayland-satellite
        # QT_QPA_PLATFORM = "wayland"; # optional: force QT apps to always use wayland
      };
      spawn-at-startup = [
        { command = ["xwayland-satellite"]; }
        { command = ["waybar"]; }
        { command = ["swaync"]; }
        { command = ["swww-daemon" "--format" "xrgb"]; }
        { command = ["clipse" "-listen"]; }
      ];
      binds = (import ./keybindings.nix) { inherit config; };
      window-rules = import ./window-rules.nix;
    };
  };
}