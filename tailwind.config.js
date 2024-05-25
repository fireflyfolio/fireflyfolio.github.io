/** @type {import('tailwindcss').Config} */
module.exports = {
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
};

