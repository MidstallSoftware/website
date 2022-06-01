<template>
  <div>
    <div
      class="hero min-h-[32rem] place-items-start"
      :style="{ backgroundImage: `url(${backgroundImage})` }"
    >
      <div
        class="hero-content my-2 mx-2 self-end text-primary-content bg-opacity-60 bg-primary"
      >
        <div class="max-w-md">
          <h1 class="text-5xl font-bold">{{ $i18n.t('hero.title') }}</h1>
          <p>{{ $i18n.t('hero.text') }}</p>
          <a href="/products/expidusos" class="btn btn-primary">{{
            $i18n.t('hero.button')
          }}</a>
        </div>
      </div>
    </div>
    <h1 class="text-center text-5xl font-bold py-8">
      {{ $i18n.t('products-title') }}
    </h1>
    <div class="justify-center px-8 h-fit w-full">
      <div
        class="grid gap-y-4 sm:grid-cols-1 md:grid-rows-1 md:grid-cols-3 md:gap-4"
      >
        <div v-for="(product, i) in products" :key="i" class="card bg-primary">
          <div class="card-body">
            <h2 class="card-title">
              {{ $i18n.t(`product.${product}.title`) }}
            </h2>
            <p>{{ $i18n.t(`product.${product}.text`) }}</p>
            <a :href="'/products/' + product" class="btn btn-primary">{{
              $i18n.t('hero.button')
            }}</a>
          </div>
        </div>
      </div>
    </div>
  </div>
</template>
<script setup lang="ts">
import { useI18n } from '@midstallsoftware/vista/dist/runtime/composables/vista'
import backgroundImage from '~/assets/expidus.jpg'
import { definePageMeta } from '#imports'

const $i18n = useI18n()

const products = ['expidusos', 'cerus', 'argama']

definePageMeta({
  title: 'page.home',
  layout: 'vs-default',
  layoutOptions: {
    center: false,
  },
})
</script>
<script lang="ts">
export default {
  name: 'PageIndex',
}
</script>
<i18n>
{
    "en": {
        "hero": {
            "title": "ExpidusOS",
            "text": "The easy to use mobile and desktop operating system from Midstall Software.",
            "button": "Learn More"
        },
        "products-title": "Products",
        "product": {
            "expidusos": {
                "title": "ExpidusOS",
                "text": "A mobile and desktop operating system designed for users who wish to get more out their PC."
            },
            "cerus": {
                "title": "Cerus",
                "text": "A platform to host Discord bots. It features a simple dashboard to manage each bot you wish to host."
            },
            "argama": {
                "title": "Argama Network",
                "text": "Formerly called Project Argama, this provides many cloud based services for ExpidusOS."
            }
        }
    }
}
</i18n>
