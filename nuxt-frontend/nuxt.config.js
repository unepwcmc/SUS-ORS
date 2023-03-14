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
    host: process.env.HOST || 'localhost',
    port: process.env.PORT || 8080
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
    // https://tailwindcss.nuxtjs.org/
    '@nuxtjs/tailwindcss'
  ],
  // Modules: https://go.nuxtjs.dev/config-modules
  modules: [
    // https://i18n.nuxtjs.org/
    // https://github.com/nuxt-community/i18n-module
    '@nuxtjs/i18n',
    // https://go.nuxtjs.dev/axios
    '@nuxtjs/axios',
    // https://go.nuxtjs.dev/pwa
    '@nuxtjs/pwa',
    // https://dev.auth.nuxtjs.org/
    '@nuxtjs/auth-next',
    // https://github.com/LinusBorg/portal-vue
    'portal-vue/nuxt',
    // https://tailwindcss.nuxtjs.org/
    '@nuxtjs/tailwindcss',
    // https://github.com/LinusBorg/portal-vue
    'portal-vue/nuxt'
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
            url: '/api/auth/sign_in',
            method: 'post',
            headers: {
              Accept: 'application/json',
              'Content-Type': 'application/json'
            }
          },
          logout: {
            url: '/api/auth/sign_out',
            method: 'delete',
            headers: {
              Accept: 'application/json',
              'Content-Type': 'application/json'
            }
          },
          user: {
            url: '/api/auth/user',
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
      login: '/login',
      logout: '/login',
      callback: '/login',
      home: '/dashboard/'
    },
    plugins: ['~/plugins/auth/auth-i18n.js']
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
      target: process.env.RAILS_API_ENDPOINT,
      pathRewrite: { '^/api/': '' }
    },
    '/rails/': {
      target: process.env.RAILS_ENDPOINT
    }
  },

  // publicRuntimeConfig: {
  //   baseUrl: process.env.BASE_URL,
  //   directUploadsEndpoint: `${process.env.RAILS_ENDPOINT}/rails/active_storage/direct_uploads`
  // },

  // PWA module configuration: https://go.nuxtjs.dev/pwa
  pwa: {
    manifest: {
      lang: 'en'
    }
  },

  // Build Configuration: https://go.nuxtjs.dev/config-build
  build: {
    extend (config, { isDev, isClient }) {
      config.resolve.alias.vue = 'vue/dist/vue.common' // required for vue runtime compiler
    },
    html: {
      minify: {
        decodeEntities: false // @see nuxt-protected-mailto
      }
    },
    postcss: {
      // Add plugin names as key and arguments as value
      // Install them before as dependencies with npm or yarn
      plugins: {
        // Disable a plugin by passing false as value
        'postcss-import': {},
        'tailwindcss/nesting': {},
        autoprefixer: {}
      }
    },
    transpile: [
      '@rails/activestorage',
      'defu'
    ]
  },

  extend (config, ctx) {
    // Run ESLint on save
    if (ctx.isDev && ctx.isClient) {
      config.module.rules.push({
        enforce: 'pre',
        test: /\.(js|vue)$/,
        loader: 'eslint-loader',
        exclude: /(node_modules)/,
        options: {
          fix: true
        }
      })
    }
  }
}
