/** @type {import('tailwindcss').Config} */
const withMT = require("@material-tailwind/html/utils/withMT");

module.exports = withMT({
  darkMode: 'selector',
  content: [
    "./_includes/**/*.{html,js}",
    "./_layouts/**/*.{html,js}",
    "./index.html",
  ],
  theme: {
    extend: {},
  },
  plugins: [],
});

