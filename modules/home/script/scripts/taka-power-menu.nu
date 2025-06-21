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

  match $selection {
    " Poweroff" => { ^systemctl poweroff },
    "󰜉 Reboot" => { ^systemctl reboot },
    "󰒲 Sleep" => { ^systemctl suspend },
    "󰤄 Hibernate" => { ^systemctl hibernate },
    _ => {print --stderr $"Unknown option: ($selection)"}
  }
}