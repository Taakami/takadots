#!/usr/bin/env nu
let options = [
  " Poweroff"
  "󰜉 Reboot"
  "󰒲 Sleep"
  "󰤄 Hibernate"
]

def main [] {
  let selection = $options
    | to text
    | rofi -dmenu -i -no-custom -p "Power menu" -l 4

  if ($selection | is-empty) {
    return
  }

  let command = $selection
    | split column " "
    | get column2
    | str downcase

  match $command {
    "poweroff" => { ^systemctl poweroff },
    "reboot" => { ^systemctl reboot },
    "sleep" => { ^systemctl suspend },
    "hibernate" => { ^systemctl hibernate },
    _ => {print --stderr $"Unknown option: ($command)"}
  }
}