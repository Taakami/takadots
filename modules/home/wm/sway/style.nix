{...}: {
  stylix.targets.sway.enable = true;
  wayland.windowManager.sway = {
    config = {
      window = {
        border = 1;
        titlebar = false;
      };
      gaps = {
        inner = 8;
      };
    };
    extraConfig = ''
      corner_radius 8
      blur enable
      blur_xray off
      blur_passes 3
      blur_radius 5
    '';
  };
}
