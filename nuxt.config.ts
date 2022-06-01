import { mdiHome } from '@mdi/js'
import { defineNuxtConfig } from 'nuxt'

export default defineNuxtConfig({
  modules: ['@midstallsoftware/vista'],
  meta: {
    link: [{ rel: 'icon', type: 'image/png', href: '/favicon.png' }],
  },
  vista: {
    branding: {
      kind: 'company',
      license: 'GPL-3.0',
    },
    layouts: {
      default: {
        links: [
          {
            url: '/',
            title: { key: 'page.home' },
            icon: mdiHome,
            side: ['default', 'default'],
          },
          {
            url: '/about',
            title: { key: 'page.about.home' },
            side: ['default', 'default'],
          },
        ],
      },
    },
  },
  nitro: {
    preset: 'cloudflare',
  },
  intlify: {
    vueI18n: {
      locale: 'en',
      fallbackRoot: true,
      messages: {
        en: {
          company: {
            name: 'Midstall Software',
          },
          page: {
            home: 'Home',
            products: {
              home: 'Products',
              expidusos: 'ExpidusOS',
              argama: 'Argama Network',
              cerus: 'Cerus',
            },
            about: {
              home: 'About',
              history: 'History',
            },
          },
        },
      },
    },
  },
})
