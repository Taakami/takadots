{ pkgs, config, lib, inputs, ... } :
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
    ];
    Config = {
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
  home.packages = with pkgs; [ 
    inputs.bzmenu.packages.${system}.default
    inputs.iwmenu.packages.${system}.default
  ];
}