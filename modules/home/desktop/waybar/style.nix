{ ... }:
{
  programs.waybar.style = ''
    * {
      min-height: 0;
      border: none;
      border-radius: 0;
      font-family: "JetBrains Mono", monospace, "Symbols Nerd Font";
      font-weight: bold;
      font-size: 12px;
      transition: background 300ms ease-out, color 300ms ease-out;
      box-shadow: none;
      text-shadow: none;
    }
    window#waybar {
      background: none;
      color: @base05;
    }
    tooltip {
      background-color: @base01;
      border-radius: 8px;
      padding: 4px;
    }
    tooltip label {
      color: @base05;
    }
    #workspaces {
      margin-top: 8px;
      margin-left: 8px;
      margin-right: 4px;
      background-color: @base01;
      border-radius: 8px;
      padding: 4px;
    }
    #workspaces button {
      padding-left: 5px;
      padding-right: 5px;
      border-radius: 8px;
      margin-right: 4px;
      color: @base05;
    }
    #workspaces button.focused {
      background-color: @base0D;
      color: @base00;
    }
    #window, #mode, #pulseaudio, #battery, #clock, #backlight, #network {
      margin-top: 8px;
      margin-right: 4px;
      padding-right: 4px;
      padding-left: 4px;
      background-color: @base01;
      border-radius: 8px;
    }
    #workspaces button:hover,
    #clock:hover,
    #pulseaudio:hover {
      background-color: @base0D;
      color: @base00;
    }
    #battery.warning {
      background-color: @base0A;
      color: @base00;
    }
    #battery.critical {
      background-color: @base08;
      color: @base00;
    }
    #pulseaudio.muted {
      background-color: @base0A;
      color: @base00;
    }
    #network {
      margin-left: 8px;
    }
  '';
}