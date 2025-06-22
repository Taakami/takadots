{ host, ... }:
{
    networking = {
        hostName = "${host}";
        networkmanager.enable = true;
        wifi = {
            powersave = true;
        };
    };
}