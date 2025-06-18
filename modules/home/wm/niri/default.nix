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
    # enable = true;
    # package = pkgs.niri-stable;
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
      environment = {
        NIXOS_OZONE_WL = "1"; # support electron and chromium based apps
        DISPLAY = ":0"; # important for xwayland-satellite
        # QT_QPA_PLATFORM = "wayland"; # optional: force QT apps to always use wayland
      };
      spawn-at-startup = [
        { command = [ "xwayland-satellite" ]; }
        { command = ["waybar"]; }
        { command = ["swaync"]; }
        { command = ["swww-daemon" "--format" "xrgb"]; }
        { command = ["clipse" "-listen"]; }
      ];
    };
  };
}