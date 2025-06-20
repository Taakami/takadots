{ pkgs, ... }:
{
  home.packages = with pkgs; [ waypaper ];
  xdg.configFile."waypaper/config.ini".text = ''
    [Settings]
    language = fr
    folder = ~/Pictures/wallpapers/
    wallpaper = ~/Pictures/wallpapers/wallpaper.jpg
    monitors = All
    backend = swww
    fill = fill
    sort = name
    color = #ffffff
    subfolders = True
    show_hidden = False
    show_gifs_only = false
    number_of_columns = 3
    swww_transition_type = any
    swww_transition_step = 90
    swww_transition_angle = 0
    swww_transition_duration = 2
    swww_transition_fps = 60
    use_xdg_state = True
  '';
  services = {
    swww.enable = true;
  };
}