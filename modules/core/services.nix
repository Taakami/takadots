{ ... }:
{
  services = {
    xserver.xkb.layout = "fr";
    gnome.gnome-keyring.enable = true;
    pipewire = {
        enable = true;
        alsa.enable = true;
        alsa.support32Bit = true;
        pulse.enable = true;
        jack.enable = true;
    };
    gvfs.enable = true;
    tumbler.enable = true;
  };
}