import { writeFile } from "fs/promises"

const slugify = (text) => {
  return (
    text
      .toString()
      // .toLowerCase()
      .replace(/\s+/g, "_")
      .replace(/[^\w-]+/g, "")
      .replace(/__+/g, "_")
      .replace(/^_+/, "")
      .replace(/_+$/, "")
  )
}

const API_KEY = "DEMO_KEY"
let date = ""
let url = `https://api.nasa.gov/planetary/apod?api_key=${API_KEY}&date=${date}`

try {
  const response = await fetch(url)
  const data = await response.json()
  console.log(data)
  const imageUrl = data.hdurl
  console.log(slugify(data.title))
  const image = await fetch(imageUrl)
  const imageBuffer = await image.arrayBuffer()
  const buffer = Buffer.from(imageBuffer)
  const fileName = `${slugify(data.title)}.jpg`
  await writeFile(fileName, buffer)
} catch (error) {
  console.log(error)
}
