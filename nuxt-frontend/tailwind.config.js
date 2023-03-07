/** @type {import('tailwindcss').Config} */
const screens = require('./tailwind-breakpoints.config.js')
module.exports = {
  purge: {
    content: [
      './components/**/*.{vue,js}',
      './content/**/*.md',
      './layouts/**/*.vue',
      './pages/**/*.vue',
      './plugins/**/*.{js,ts}',
      './nuxt.config.{js,ts}'
    ]
  },
  darkMode: false, // or 'media' or 'class'
  theme: {
    screens,
    extend: {
      colors: {
        blue: {
          font: '#335DB0',
          bg_button: '#335DB0'
        },
        grey: {
          accent: '#D9D9D9'
        }
      }
    }
  },
  plugins: [
    function ({ addBase, theme }) {
      const screens = theme('screens', {})
      const breakpoints = Object.keys(screens)

      addBase({
        ':root': {
          '--current-breakpoint': 0
        },
        ...breakpoints.reduce((acc, current) => {
          acc[`@media (min-width: ${screens[current]})`] = {
            ':root': {
              '--current-breakpoint': screens[current]
            }
          }
          return acc
        }, {})
      })
    }
  ]
}
