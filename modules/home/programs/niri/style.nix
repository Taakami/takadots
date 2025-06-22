{
  config,
  ...
}: {
  programs.niri.settings = {
    prefer-no-csd = true;
    cursor.hide-after-inactive-ms = 5000;
    layout = {
      border.width = 2;
      gaps = 8;
      always-center-single-column = true;
      preset-column-widths = [
        { proportion = 1. / 3.; }
        { proportion = 1. / 2.; }
        { proportion = 2. / 3.; }
      ];
      default-column-width.proportion = 2. / 3.;
      shadow = {
        enable = true;
        draw-behind-window = true;
        softness = 8;
        spread = 4;
        offset = {
          x = 0;
          y = 0;
        };
      };
    };
    hotkey-overlay.skip-at-startup = true;
    overview.backdrop-color = config.lib.stylix.colors.withHashtag.base01;
  };
}