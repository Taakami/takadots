{ pkgs, username, ... }:
{
  services = {
    gnome.gnome-keyring.enable = true;
    greetd = {
      enable = true;
      settings = rec {
        initial_session = {
          command = "${pkgs.greetd.tuigreet}/bin/tuigreet --time --cmd sway ";
          user = "${username}";
        };
        default_session = initial_session;
      };
    };
    pipewire = {
        enable = true;
        alsa.enable = true;
        alsa.support32Bit = true;
        pulse.enable = true;
        jack.enable = true;
    };
  }
}