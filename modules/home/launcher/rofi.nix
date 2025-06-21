{ pkgs, config, lib,  ... } :
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
    };
    theme =  let
     inherit (config.lib.formats.rasi) mkLiteral;
      in lib.mkAfter {
      element-icon = {
          size = mkLiteral "2em";
      };
    };
  };
}