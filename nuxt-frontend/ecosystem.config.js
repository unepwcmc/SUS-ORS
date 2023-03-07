module.exports = {
  apps: [{
    name: 'sus-ors',
    script: 'yarn',
    watch: 'true',
    args: 'start',
    cwd: '/home/wcmc/sus-ors/current/nuxt-frontend',
    interpreter: '/bin/bash',
    env: {
      NODE_PORT: '3004',
      NODE_ENV: 'production'
    }
  }]
}
