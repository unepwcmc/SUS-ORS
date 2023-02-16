module.exports = {
  apps: [{
    name: 'rails-7-nuxt-template',
    script: 'yarn',
    watch: 'true',
    args: 'start',
    cwd: '/home/wcmc/rails-7-nuxt-template/current/nuxt-frontend',
    interpreter: '/bin/bash',
    env: {
      NODE_PORT: '8080',
      NODE_ENV: 'production'
    }
  }]
}
