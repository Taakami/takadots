''
  * {
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
  window#waybar.empty #window {
    background-color: transparent;
  }
  #window, #mode, #pulseaudio, #battery, #clock, #backlight, #network, #tray, #bluetooth {
    margin-top: 8px;
    margin-right: 4px;
    padding-right: 4px;
    padding-left: 4px;
    padding-top: 4px;
    padding-bottom: 4px;
    background-color: @base01;
    border-radius: 8px;
  }
  #workspaces button:hover,
  #clock:hover,
  #pulseaudio:hover ,
  #network:hover {
    background-color: @base0D;
    color: @base00;
  }
  #battery.warning {
    border: 2px solid @base0A;
  }
  #battery.critical {
    border: 2px solid @base08;
  }
  #pulseaudio.muted {
    border: 2px solid @base0A;
  }
  #network {
    margin-right: 8px;
  }
''