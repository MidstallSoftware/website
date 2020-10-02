<template>
  <v-app>
    <v-navigation-drawer v-model="drawer" app absolute temporary>
      <v-list dense>
        <v-list-item v-for="link in links" :key="link.href" link>
          <v-btn text :href="link.href">
            <v-list-item-content>
              <v-list-item-title>{{ link.title }}</v-list-item-title>
            </v-list-item-content>
          </v-btn>
        </v-list-item>
      </v-list>
    </v-navigation-drawer>
    <v-card class="fill-height">
      <v-app-bar app dense>
        <v-app-bar-nav-icon class="mobile-show" app @click.stop="drawer = !drawer" />
        <v-toolbar-title>Midstall Software</v-toolbar-title>
        <v-spacer class="mobile-hide" />
        <v-btn v-for="link in links" :key="link.href" :href="link.href" text class="mobile-hide">
          {{ link.title }}
        </v-btn>
      </v-app-bar>
      <v-main>
        <v-container fluid>
          <nuxt />
        </v-container>
      </v-main>
    </v-card>
  </v-app>
</template>
<script>
export default {
  data () {
    return {
      drawer: null,
      links: [
        { href: '/', title: 'Home' },
        { href: '/openmic', title: 'OpenMic' }
      ]
    }
  }
}
</script>
<style>
@media screen and (max-width: 1023px) {
  .mobile-hide {
    display: none;
  }
  .mobile-show {
    display: flex;
  }
}
@media screen and (min-width: 1024px) {
  .mobile-hide {
    display: flex;
  }
  .mobile-show {
    display: none;
  }
}
</style>
