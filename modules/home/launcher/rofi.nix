{ pkgs, config,  ... } :
{
  stylix.targets.rofi.enable = true;
  programs.rofi = {
    enable = true;
    package = pkgs.rofi-wayland;
    terminal = "${pkgs.alacritty}/bin/alacritty";
    modes = [
      "window"
      "drun"
      "run"
      "calc"
    ];
    plugins = with pkgs; [
      rofi-calc
      rofi-network-manager
    ];
    extraConfig = {
      show-icons = true;
      "display-drun" = "";
      "display-window" = "";
      "display-run" = "";
      "display-calc" = "";
    };
    theme = let
     inherit (config.lib.formats.rasi) mkLiteral;
    in {
      element-icon = {
          size = mkLiteral "2.5em";
      };
    };
  };
}