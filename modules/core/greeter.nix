{pkgs, ...}:
let
  sessionChooser = pkgs.writeScript "chooser" ''
    #!${pkgs.bash}/bin/bash

    choice=$(${pkgs.fzf}/bin/fzf --prompt="Choose a session: " --height=10 <<< $'sway\nniri')

    case "$choice" in
      sway)
        exec ${pkgs.sway}/bin/sway
        ;;
      niri)
        exec ${pkgs.niri}/bin/niri-session
        ;;
      *)
        echo "No valid session selected"
        exit 1
        ;;
    esac
  '';
in
{
  services.greetd = {
    enable = true;
    settings = rec {
      default_session = {
        command = "${pkgs.greetd.tuigreet}/bin/tuigreet --time --remember --cmd ${sessionChooser}";
        user = "greeter"; # Or your username, but "greeter" is recommended
      };
    };
  };
}