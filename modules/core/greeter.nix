{pkgs, config, ...}:
# let
#   sessionChooser = pkgs.writeScript "chooser" ''
#     #!${pkgs.bash}/bin/bash

#     choice=$(${pkgs.fzf}/bin/fzf --prompt="Choose a session: " --height=10 <<< $'sway\nniri')

#     case "$choice" in
#       sway)
#         exec sway
#         ;;
#       niri)
#         exec niri-session
#         ;;
#       *)
#         echo "No valid session selected"
#         exit 1
#         ;;
#     esac
#   '';
# in
{
  services.greetd = {
    enable = true;
    settings = rec {
      default_session = {
        # command = "${pkgs.greetd.tuigreet}/bin/tuigreet --time --remember --cmd ${pkgs.niri}/bin/niri-session";
        command = "${pkgs.cage}/bin/cage -s -mlast -- ${pkgs.regreet}/bin/regreet";
        user = "greeter"; # Or your username, but "greeter" is recommended
      };
    };
  };
  programs.regreet = {
    enable = true;
    # settings = {
    #   appearance.greeting_msg = "Hey";
    #   widget.clock = {
    #     format = "%A %H:%M";
    #     timezone = "Europe/Paris";
    #   };
    # };
  };
  # stylix.targets.regreet.enable = true;
}