#!/usr/bin/env nu

# Your NASA API key
let api_key = "DEMO_KEY"

# Choose the download directory
let download_dir = "~/Pictures/apod"

# Ensure the directory exists
mkdir $download_dir

# Set the APOD API endpoint
let url = $"https://api.nasa.gov/planetary/apod?api_key=($api_key)"

# Fetch the APOD metadata
let response = (http get $url)

# Check if it's an image
if $response.media_type != "image" {
    print $"⚠️ The APOD for ($response.date) is not an image (media_type: ($response.media_type))."
    exit
}

# Extract metadata
let image_url = $response.hdurl
let title = $response.title
let explanation = $response.explanation
let date = $response.date

# Print info
print $"Title: ($title)"
print $"Date: ($date)"
print $"Explanation: ($explanation)\n"

# Extract filename from URL
let filename = ($image_url | path basename)

# Join full path for saving
let full_path = (path join $download_dir $filename)

# Download the image
http get $image_url | save $full_path

print $"✅ Image saved to: ($full_path)"
