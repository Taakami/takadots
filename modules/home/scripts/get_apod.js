const url = "https://apod.nasa.gov/apod/";
const imageUrls = [];
const response = await fetch(url);
[...(await response.text()).matchAll(/<IMG.*?SRC="(.*?)"/g)].forEach((match) =>
  imageUrls.push(`${url}${match[1]}`)
);
console.log(imageUrls);
