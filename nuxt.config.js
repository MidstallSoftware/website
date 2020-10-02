export default {
  mode: 'universal',
  head: {
    titleTemplate: 'Midstall Software - %s',
    meta: [
      { charset: 'UTF-8' },
      { name: 'viewport', content: 'width=device-width, initial-scale=1' },
      { hid: 'description', name: 'description', content: 'Midstall Software is an independent technology startup based in the Pacific Northwest.' }
    ]
  },
  buildModules: [
    '@nuxtjs/vuetify'
  ]
}
