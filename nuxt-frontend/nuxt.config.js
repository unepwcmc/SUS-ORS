const POLYFILL_FEATURES = [ // @see https://polyfill.io/v3/url-builder/
  'default',
  'es2015',
  'es2016',
  'es2017',
  'es2018',
  'es2019',
  'es5',
  'es6',
  'IntersectionObserver', // @see https://nuxtjs.org/docs/2.x/configuration-glossary/configuration-router#prefetchlinks
  'window.scroll'
]

export default {
  server: {
    port: 8080
    // port: process.env.PORT || 8080
  },
  // Global page headers: https://go.nuxtjs.dev/config-head
  head: {
    title: 'Rails 7 Nuxt Template',
    meta: [
      { charset: 'utf-8' },
      { name: 'viewport', content: 'width=device-width, initial-scale=1' },
      { hid: 'description', name: 'description', content: 'Rails 7 Nuxt Template' },
      { name: 'format-detection', content: 'telephone=no' }
    ],
    link: [
      { rel: 'icon', type: 'image/x-icon', href: '/favicon.ico' }
    ],
    script: [
      { src: `https://polyfill.io/v3/polyfill.js?features=${POLYFILL_FEATURES.join('%2C')}`, body: true }
    ]
  },

  // Global CSS: https://go.nuxtjs.dev/config-css
  css: [],

  // Plugins to run before rendering page: https://go.nuxtjs.dev/config-plugins
  plugins: [
    { src: '~/plugins/vue-tailwind.js' },
    { src: '~/plugins/errors.js' },
    { src: '~/plugins/axios.js' },
    { src: '~/plugins/scrollPosition.js', mode: 'client' },
    { src: '~/plugins/scrollTo.js', mode: 'client' }
  ],

  // Auto import components: https://go.nuxtjs.dev/config-components
  components: [
    { path: '~/components/AdminBackend', prefix: 'Admin' },
    { path: '~/components/Frontend', prefix: 'F' }
  ],

  // Modules for dev and build (recommended): https://go.nuxtjs.dev/config-modules
  buildModules: [
    // https://go.nuxtjs.dev/eslint
    '@nuxtjs/eslint-module',
    // https://go.nuxtjs.dev/stylelint
    '@nuxtjs/stylelint-module',
    // https://go.nuxtjs.dev/tailwindcss
    '@nuxtjs/tailwindcss'
  ],

  // Modules: https://go.nuxtjs.dev/config-modules
  modules: [
    // https://go.nuxtjs.dev/axios
    '@nuxtjs/axios',
    // https://go.nuxtjs.dev/pwa
    '@nuxtjs/pwa',
    // https://dev.auth.nuxtjs.org/
    '@nuxtjs/auth-next',
    // https://github.com/LinusBorg/portal-vue
    'portal-vue/nuxt',
    // https://content.nuxtjs.org/
    '@nuxt/content'
  ],

  content: {
    // intentionally blank
  },

  auth: {
    strategies: {
      local: {
        token: {
          property: 'token',
          global: true
        },
        user: {
          autoFetch: false,
          property: 'user'
        },
        endpoints: {
          login: {
            url: '/api/admin/auth/sign_in',
            method: 'post',
            headers: {
              Accept: 'application/json',
              'Content-Type': 'application/json'
            }
          },
          logout: {
            url: '/api/admin/auth/sign_out',
            method: 'delete',
            headers: {
              Accept: 'application/json',
              'Content-Type': 'application/json'
            }
          },
          user: {
            url: '/api/admin/auth/user',
            method: 'get',
            headers: {
              Accept: 'application/json',
              'Content-Type': 'application/json'
            }
          }
        }
      }
    },
    redirect: {
      login: '/admin/login',
      logout: '/admin/login',
      callback: '/admin/login',
      home: '/admin/'
    }
  },

  // Axios module configuration: https://go.nuxtjs.dev/config-axios
  axios: {
    proxy: true,
    headers: {
      common: {
        'Content-Type': 'application/json',
        Accept: 'application/json'
      }
    }
  },

  proxy: {
    '/api/': {
      target: process.env.RAILS_ENDPOINT,
      pathRewrite: { '^/api/': '' }
    }
  },

  // PWA module configuration: https://go.nuxtjs.dev/pwa
  pwa: {
    manifest: {
      lang: 'en'
    }
  },

  // Build Configuration: https://go.nuxtjs.dev/config-build
  build: {
  },

  tailwindcss: {
    cssPath: '~/assets/css/tailwind.css'
  }
}
