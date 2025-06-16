{ pkgs, username, ... }:
{
  services = {
    xserver.xkb.layout = "fr";
    gnome.gnome-keyring.enable = true;
    greetd = {
      enable = true;
      settings = rec {
        default_session = {
          command = "${pkgs.greetd.tuigreet}/bin/tuigreet --time --remember --cmd sway ";
          user = "${username}";
        };
        niri = {
          command = "${pkgs.greetd.tuigreet}/bin/tuigreet --time --remember --cmd niri-session ";
          user = "${username}";
        };
      };
    };
    pipewire = {
        enable = true;
        alsa.enable = true;
        alsa.support32Bit = true;
        pulse.enable = true;
        jack.enable = true;
    };
  };
}