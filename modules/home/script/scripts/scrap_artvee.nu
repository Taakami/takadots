#!/usr/bin/env nu

let image_dir = '~/Pictures/wallpapers/paints/'

def slugify [input_string]: string -> string {
    $input_string
    | str trim
    | str replace --regex '[^a-zA-Z0-9\s-]' '' --all
    | str replace --regex '[\s-]+' '_' --all
    | str replace --regex '^[_]|[_]$' '' --all
}

def main [
    target_url: string
] {
    let page_content = http get $target_url

    let artwork_title = $page_content
    | query web -q 'h1.product_title a'
    | flatten
    | first
    | slugify $in

    let artwork_author = $page_content
    | query web -q '.tartist a'
    | flatten
    | first
    | slugify $in

    let image_url = $page_content
    | query web -q '.dlnk .prem-link.snax-action-add-to-collection-downloads' -a href
    | flatten
    | first

    let image_extension = $image_url
    | url parse
    | get path
    | path parse
    | get extension

    let filename = $"($artwork_title)-($artwork_author).($image_extension)"

    if ($filename | path exists) {
        print $"⏩ File '($filename)' already exists. Skipping download."
    } else if $image_url != null and ($image_url | str length) > 0 {
        http get $image_url | save -p $"($image_dir)($filename)"
        print $"✅ File '($filename)' downloaded successfully."
    } else {
        print --stderr "⛔ Error: Could not determine image URL."
    }
}