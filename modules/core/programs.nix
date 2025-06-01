{ ... }:
{
    programs = {
        dconf.enable = true;
        xfconf.enable = true;
        zsh.enable = true;
    };
    environment.pathsToLink = [ "/share/zsh" ];
}