<template>
  <v-app dark>
    <v-app-bar
      class="d-md-block d-lg-block d-xl-block d-none"
      dense
      elevate-on-scroll
      fixed
      elevation="3"
    >
      <v-toolbar-title>{{ $t('company-name') }}</v-toolbar-title>
      <v-spacer />

      <a class="text--primary" href="/">
        <v-btn elevation="0">
          {{ $t('page.home') }}
        </v-btn>
      </a>

      <v-menu open-on-hover offset-y>
        <template v-slot:activator="{ on, attrs }">
          <a class="text--primary" href="/products">
            <v-btn elevation="0" v-bind="attrs" v-on="on">
              {{ $t('page.products') }}
            </v-btn>
          </a>
        </template>

        <v-list dense nav>
          <v-list-item link>
            <a class="text--primary" href="/products/expidusos">
              {{ $t('product.expidusos.name') }}
            </a>
          </v-list-item>
          <v-list-item link>
            <a class="text--primary" href="/products/argama">
              {{ $t('product.argama.name') }}
            </a>
          </v-list-item>
        </v-list>
      </v-menu>

      <v-menu open-on-hover offset-y>
        <template v-slot:activator="{ on, attrs }">
          <a class="text--primary" href="/about">
            <v-btn elevation="0" v-bind="attrs" v-on="on">
              {{ $t('page.about') }}
            </v-btn>
          </a>
        </template>

        <v-list dense nav>
          <v-list-item link>
            <a class="text--primary" href="/about/history">
              {{ $t('page.about.history') }}
            </a>
          </v-list-item>
        </v-list>
      </v-menu>
      <v-menu open-on-hover offset-y>
        <template v-slot:activator="{ on, attrs }">
          <v-btn v-bind="attrs" v-on="on">
            <span
              ><fa :icon="['fas', 'language']" />
              {{
                $i18n.locales.filter((i) => i.code == $i18n.locale)[0].name
              }}</span
            >
          </v-btn>
        </template>
        <v-list>
          <v-list-item v-for="locale in availableLocales" :key="locale.code">
            <nuxt-link
              :to="switchLocalePath(locale.code)"
              class="text--primary"
              >{{ locale.name }}</nuxt-link
            >
          </v-list-item>
        </v-list>
      </v-menu>
    </v-app-bar>
    <v-app-bar
      class="d-sm-block d-md-none d-lg-none d-xl-none d-block"
      dense
      elevate-on-scroll
      fixed
      elevation="3"
    >
      <v-app-bar-nav-icon @click="drawer = !drawer">
        <fa :icon="['fas', 'bars']" />
      </v-app-bar-nav-icon>
      <v-toolbar-title>{{ $t('company-name') }}</v-toolbar-title>
    </v-app-bar>
    <v-navigation-drawer v-model="drawer" absolute temporary>
      <v-list dense nav>
        <v-list-item link>
          <v-list-item-content>
            <a class="text--primary" href="/">
              <v-btn elevation="0">
                {{ $t('page.home') }}
              </v-btn>
            </a>
          </v-list-item-content>
        </v-list-item>
        <v-list-item link>
          <v-list-group>
            <template v-slot:activator>
              <v-list-item-content>
                <v-list-item-title>
                  <v-btn elevation="0">
                    {{ $t('page.products') }}
                  </v-btn>
                </v-list-item-title>
              </v-list-item-content>
            </template>
            <v-list-item link>
              <a class="text--primary" href="/products/expidusos">
                <v-btn elevation="0">
                  {{ $t('product.expidusos.name') }}
                </v-btn>
              </a>
            </v-list-item>
            <v-list-item link>
              <a class="text--primary" href="/products/argama">
                <v-btn elevation="0">
                  {{ $t('product.argama.name') }}
                </v-btn>
              </a>
            </v-list-item>
          </v-list-group>
        </v-list-item>
        <v-list-item link>
          <v-list-group>
            <template v-slot:activator>
              <v-list-item-content>
                <v-list-item-title>
                  <a href="/about" class="text--primary">
                    <v-btn elevation="0">
                      {{ $t('page.about') }}
                    </v-btn>
                  </a>
                </v-list-item-title>
              </v-list-item-content>
            </template>
            <v-list-item link>
              <a class="text--primary" href="/about/history">
                <v-btn elevation="0">
                  {{ $t('page.about.history') }}
                </v-btn>
              </a>
            </v-list-item>
          </v-list-group>
        </v-list-item>
      </v-list>

      <template v-slot:prepend>
        <div class="pa-2">
          <v-menu top>
            <template v-slot:activator="{ on, attrs }">
              <v-btn v-bind="attrs" v-on="on">
                <span
                  ><fa :icon="['fas', 'language']" />
                  {{
                    $i18n.locales.filter((i) => i.code == $i18n.locale)[0].name
                  }}</span
                >
              </v-btn>
            </template>
            <v-list>
              <v-list-item
                v-for="locale in availableLocales"
                :key="locale.code"
              >
                <nuxt-link
                  :to="switchLocalePath(locale.code)"
                  class="text--primary"
                  >{{ locale.name }}</nuxt-link
                >
              </v-list-item>
            </v-list>
          </v-menu>
        </div>
      </template>
    </v-navigation-drawer>
    <v-main>
      <div class="main-container">
        <Nuxt />
      </div>
    </v-main>
    <v-footer absolute app>
      <v-card flat tile width="100%" class="text-center">
        <p>
          <v-card-text
            v-for="(link, index) in footerLinks"
            :key="index"
            class="d-inline"
          >
            <a :href="link.href" class="text--primary mx-4">
              <v-btn elevation="0">
                {{ link.title }}
              </v-btn>
            </a>
          </v-card-text>
        </p>
        <p>
          <v-card-text
            v-for="(social, index) in socials"
            :key="index"
            class="d-inline"
          >
            <v-tooltip bottom>
              <template v-slot:activator="{ on, attrs }">
                <a :href="social.href" class="text--primary mx-4">
                  <v-btn elevation="0" icon v-bind="attrs" v-on="on">
                    <fa :icon="['fab', social.icon]" />
                  </v-btn>
                </a>
              </template>
              <span>{{ social.title }}</span>
            </v-tooltip>
          </v-card-text>
        </p>
        <v-divider />
        <v-card-text class="text--primary">
          &copy; {{ new Date().getFullYear() }} - {{ $t('company-name') }}
        </v-card-text>
      </v-card>
    </v-footer>
  </v-app>
</template>
<i18n>
{
	"en": {
		"company-name": "Midstall Software",
		"page.home": "Home",
		"page.products": "Products",
		"page.supporting": "Support Us",
		"page.about": "About",
		"page.about.history": "History",
    "page.privacy": "Privacy Policy"
	}
}
</i18n>
<script>
export default {
  computed: {
    availableLocales() {
      return this.$i18n.locales
    },
  },
  data() {
    return {
      drawer: false,
      footerLinks: [
        { href: '/', title: this.$t('page.home').toString() },
        { href: '/about', title: this.$t('page.about').toString() },
        { href: '/supporting', title: this.$t('page.supporting').toString() },
        { href: '/legal/privacy', title: this.$t('page.privacy').toString() },
      ],
      socials: [
        {
          icon: 'discord',
          href: 'https://discord.com/invite/GVfBF2w',
          title: 'Server Invite',
        },
        {
          icon: 'github',
          href: 'https://github.com/MidstallSoftware',
          title: '@MidstallSoftware',
        },
        {
          icon: 'patreon',
          href: 'https://patreon.com/MidstallSoftware',
          title: '/MidstallSoftware',
        },
        {
          icon: 'reddit',
          href: 'https://reddit.com/r/Midstall',
          title: '/r/Midstall',
        },
        {
          icon: 'twitter',
          href: 'https://twitter.com/MidstallSW',
          title: '@MidstallSW',
        },
      ].sort((a, b) => a.title.localeCompare(b.title)),
    }
  },
}
</script>
<style>
div.main-container {
  padding-top: 65px;
  padding-bottom: 65px;
  padding-left: 15px;
  padding-right: 15px;
}
</style>
