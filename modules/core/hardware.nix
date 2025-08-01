{
  pkgs,
  host,
  ...
}: {
  hardware = {
    bluetooth = {
      enable = true;
    };
    graphics = {
      enable = true;
      extraPackages = with pkgs; [
        intel-media-driver
        # intel-ocl
        intel-vaapi-driver
      ];
    };
  };
  networking = {
    hostName = "${host}";
    networkmanager = {
      enable = true;
      wifi = {
        powersave = true;
      };
    };
  };

  console.keyMap = "fr";
  time.timeZone = "Europe/Paris";
  i18n = {
    defaultLocale = "en_US.UTF-8";
    extraLocaleSettings = {
      LC_ADRESS = "fr_FR.UTF-8";
      LC_IDENTIFICATION = "fr_FR.UTF-8";
      LC_MEASUREMENT = "fr_FR.UTF-8";
      LC_MONETARY = "fr_FR.UTF-8";
      LC_NAME = "fr_FR.UTF-8";
      LC_NUMERIC = "fr_FR.UTF-8";
      LC_PAPER = "fr_FR.UTF-8";
      LC_TELEPHONE = "fr_FR.UTF-8";
      LC_TIME = "fr_FR.UTF-8";
    };
  };
}
