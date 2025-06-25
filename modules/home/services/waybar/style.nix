''
  * {
    all: initial;
    min-height: 0;
    border: none;
    border-radius: 0;
    font-weight: bold;
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
  window#waybar.empty #window {
    background-color: transparent;
  }
  #window, #pulseaudio, #battery, #clock, #backlight, #network, #tray, #bluetooth {
    margin-top: 8px;
    margin-right: 4px;
    padding: 4px;
    background-color: @base01;
    border: 2px solid @base01;
    border-radius: 8px;
  }
  #workspaces {
    margin-top: 8px;
    margin-left: 8px;
    margin-right: 4px;
    padding: 4px;
    background-color: @base01;
    border: 2px solid @base0B;
    border-radius: 8px;
  }
  #workspaces button {
    padding-left: 5px;
    padding-right: 5px;
    border-radius: 8px;
    margin-right: 4px;
    color: @base05;
    border: 2px solid @base0B;
  }
  #workspaces button.focused {
    border-color: @base0D;
    color: @base01;
  }
  #battery {
    border-color: @base08;
    color: @base08;
  }
  #battery.warning {
    background-color: @base09;
    color: @base01;
  }
  #battery.critical {
    background-color: @base08;
    color: @base01;
  }
  #pulseaudio {
    border-color: @base0B;
    color: @base0B;
  }
  #clock {
    border-color: @base0C;
    color: @base0C;
  }
  #backlight {
    border-color: @base0A;
    color: @base0A;
  }
  #bluetooth {
    border-color: @base0D;
    color: @base0D;
  }
  #network {
    border-color: @base0E;
    color: @base0E;
    margin-right: 8px;
  }
''