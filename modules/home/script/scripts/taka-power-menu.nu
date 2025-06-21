#!/usr/bin/env nu
let options = [
  " Poweroff"
  "󰜉 Reboot"
  "󰒲 Sleep"
  "󰤄 Hibernate"
]

def main [] {
  $options
  | to text
  | rofi -dmenu -i -no-custom -p "Power menu" -l 4
  | split column " "
  | get column2
  | str downcase
  | to text
  | systemctl $in
}
