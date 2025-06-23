{pkgs, config, ...}:
{
  # services.greetd = {
  #   enable = true;
  #   settings = rec {
  #     default_session = {
  #       command = "${pkgs.cage}/bin/cage -s -mlast -- ${pkgs.greetd.regreet}/bin/regreet";
  #       user = "greeter";
  #     };
  #   };
  # };
  programs.regreet = {
    enable = true;
    settings = {
      appearance.greeting_msg = "Hey";
      widget.clock = {
        format = "%A %H:%M";
        timezone = "Europe/Paris";
      };
      env = {

      };
    };
    cageArgs = [ "-s" "-m" "last" ];
  };
  stylix.targets.regreet.enable = true;
  environment.sessionVariables = {
    XKB_DEFAULT_LAYOUT = "fr";
  };
}