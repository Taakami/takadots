{
  programs.niri.settings.window-rules = [
    {
      geometry-corner-radius = {
        bottom-left = 4.;
        bottom-right = 4.;
        top-left = 4.;
        top-right = 4.;
      };
      clip-to-geometry = true;
      draw-border-with-background = false;
    }
    {
      matches = [ { app-id = "^Clipse$"; } ];
      open-floating = true;
      default-column-width.fixed = 900;
      default-window-height.fixed = 600;
    }
  ];
}