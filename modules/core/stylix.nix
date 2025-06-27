{
  inputs,
  config,
  pkgs,
  ...
}:
{
  imports = [
    inputs.stylix.nixosModules.stylix
  ];
  stylix = {
    enable = true;
    autoEnable = false;
    base16Scheme = import ../../assets/colors/paints.nix;
    cursor = {
      package = pkgs.volantes-cursors;
      name = "volantes_cursors";
      size = 32;
    };
    fonts = {
      serif = config.stylix.fonts.monospace;
      sansSerif = config.stylix.fonts.monospace;
      monospace = {
        package = pkgs.maple-mono.variable;
        name = "Maple Mono";
      };
      emoji = {
        package = pkgs.noto-fonts-emoji;
        name = "Noto Color Emoji";
      };
    };
    opacity = {
      applications = 0.7;
      desktop = 0.7;
      popups = 0.7;
      terminal = 0.7;
    };
    # overlays.enable = true;
    polarity = "dark";
    targets = {
      console.enable = true;
      grub = {
        enable = true;
        useWallpaper = true;
      };
    };
    image = ../../assets/imgs/Landscape_with_a_Chapel_and_Houses_on_a_Mountainside_-_Jean-Jacques_de_Boissieu.png;
  };
}