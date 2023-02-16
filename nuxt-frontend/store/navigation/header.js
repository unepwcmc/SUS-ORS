import defaultGetters from '~/functions/store/getters'

export const state = () => ({
  headerNavigation: []
})

export const getters = {
  ...defaultGetters('headerNavigation')
}

export const mutations = {
  store: (state, headerNavigation) => {
    state.headerNavigation = headerNavigation
  }
}

export const actions = {
  initialize: ({ commit }, headerNavigation) => {
    commit('store', headerNavigation)
  }
}
