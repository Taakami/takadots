#!/usr/bin/env nu

# --- Configuration ---
let wallpaper_dir = $"($env.HOME)/Pictures/wallpapers"
let set_wallpaper_cmd = "swww img"
# --- End Configuration ---


def main [] {
  # --- Stage 1: Select a Directory ---
  let categories = (ls $wallpaper_dir | where type == dir | get name)

  if ($categories | is-empty) {
      error make { msg: $"No subdirectories found in ($wallpaper_dir)" }
      return
  }

  let selected_category = (
      $categories
      | str join "\n"
      | ^rofi -dmenu -i -p "Select Category"
  )

  if ($selected_category | is-empty) {
      print "No category selected. Exiting."
      return
  }


  # --- Stage 2: Select an Image ---
  let images = ls $selected_category | get name
  let rofi_input = (
      $images
      | each { |it|
          let display_name = ($it | path basename | str replace -a "_" " ")
          $"($display_name)\u{0}icon\u{1f}($it)\u{1f}meta\u{1f}($it)\n"
      }
      | str join
  )
  let selected_wallpaper = (
      $rofi_input
      | ^rofi -dmenu -i -p "Select Wallpaper"
  )

  if not ($selected_wallpaper | is-empty) {
      run-external $set_wallpaper_cmd $selected_wallpaper
      print $"Wallpaper set to: ($selected_wallpaper)"
  } else {
      print "No wallpaper selected. Exiting."
  }
}