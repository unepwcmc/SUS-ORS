export const actions = {
  async nuxtServerInit ({ dispatch }) {
    const { header } = await this.$axios.$get('/api/navigation')

    dispatch('navigation/header/initialize', header)
  }
}
