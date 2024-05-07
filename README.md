# FireflyFolio HUB

Welcome to my Little HUB.

## To use Tailwind CSS

Add the following links into your head layouts:
```html
  <head>
    <link rel="stylesheet" href="/assets/css/main.css">    
  </head>
```

Update all files and folders that have to be parsed in content array in tailwind.config.js, for instance:
```js
/** @type {import('tailwindcss').Config} */
module.exports = {
  content: [
    "./_includes/**/*.{html,js}",
    "./_layouts/**/*.{html,js}",
    "./index.html",
  ],
  theme: {
    extend: {},
  },
  plugins: [],
}
```

Run Jekyll with Docker:
```bash
docker compose up -d
```

Run Tailwind CLI:
```bash
npx tailwindcss -i ./assets/css/tailwind.css -o ./assets/css/main.css --watch
```
NB: Node must be installed in your host system first.