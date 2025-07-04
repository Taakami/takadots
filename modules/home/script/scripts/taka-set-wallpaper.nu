#!/usr/bin/env nu

let wallpaper_dir = $"($env.HOME)/Pictures/wallpapers"


def main [] {
  let categories = $wallpaper_dir + "/*" | glob $in --no-file

  if ($categories | is-empty) {
      error make { msg: $"No subdirectories found in ($wallpaper_dir)" }
      return
  }

  let selected_category = (
      $categories
      | path basename
      | str join "\n"
      | rofi -dmenu -i -no-custom -p "Select Category" -keep-right -l 5
  )

  if ($selected_category | is-empty) {
      print "No category selected. Exiting."
      return
  }

  let images = $wallpaper_dir + "/" + $selected_category + "/*" | glob $in --no-dir

  let rofi_input = (
      $images
      | each { |it|
          $"($it | path basename)\u{0}icon\u{1f}($it)\n"
      }
      | str join
  )
  let selected_wallpaper = (
      $rofi_input
      | rofi -dmenu -i -no-custom -p "Select Wallpaper" -keep-right -show-icons -l 10
  )

  if not ($selected_wallpaper | is-empty) {
      swww img $"($wallpaper_dir)/($selected_category)/($selected_wallpaper)" -t any
      print $"Wallpaper set to: ($selected_wallpaper)"
  } else {
      print "No wallpaper selected. Exiting."
  }
}
def "main random" [] {
    $wallpaper_dir + "/*"
    | glob $in --no-file
    | shuffle
    | first
    | $in + "/*"
    | glob $in --no-dir
    | shuffle
    | first
    | swww img $in -t any
}