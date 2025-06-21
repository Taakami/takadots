#!/usr/bin/env nu

# --- Configuration ---
let wallpaper_dir = $"($env.HOME)/Pictures/wallpapers"
# --- End Configuration ---


def main [] {
  # --- Stage 1: Select a Directory ---
  let categories = $wallpaper_dir + "/*" | glob $in --no-file

  if ($categories | is-empty) {
      error make { msg: $"No subdirectories found in ($wallpaper_dir)" }
      return
  }

  let selected_category = (
      $categories
      | str join "\n"
      | rofi -dmenu -i -no-custom -p "Select Category" -keep-right
  )

  if ($selected_category | is-empty) {
      print "No category selected. Exiting."
      return
  }


  # --- Stage 2: Select an Image ---
  let images =  $selected_category + "/*" | glob $in --no-dir

  let rofi_input = (
      $images
      | each { |it|
          $"($it)\u{0}icon\u{1f}($it)\n"
      }
      | str join
  )
  let selected_wallpaper = (
      $rofi_input
      | rofi -dmenu -i -no-custom -p "Select Wallpaper" -keep-right
  )

  if not ($selected_wallpaper | is-empty) {
      swww img $selected_wallpaper
      print $"Wallpaper set to: ($selected_wallpaper)"
  } else {
      print "No wallpaper selected. Exiting."
  }
}