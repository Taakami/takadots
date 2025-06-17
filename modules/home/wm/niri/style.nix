{
  ...
}: {
  stylix.targets.niri.enable = true;
  programs.niri.settings = {
    prefer-no-csd = true;
    cursor.hide-after-inactive-ms = 5000;
    layout = {
      border.width = 2;
      gaps = 8;
      center-focused-column = true;
      preset-column-widths = [
        { proportion = 1. / 3.; }
        { proportion = 1. / 2.; }
        { proportion = 2. / 3.; }
      ];
      default-column-width.proportion = 1. / 2.;
    };
    hotkey-overlay.skip-at-startup = true;
    shadow = {
      enable = true;
      draw-behind-window = true;
    };
  };
}