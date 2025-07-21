{ ... }:
{
    boot.loader = {
      efi.canTouchEfIVariables = true;
      systemd-boot = {
          enable = true;
          configurationLimit = 10;
      };
    };
}