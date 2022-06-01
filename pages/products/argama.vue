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
        </div>
      </div>
    </div>
    <h1 class="text-center text-5xl font-bold py-8">
      {{ $i18n.t('features-title') }}
    </h1>
    <div class="justify-center px-8 h-fit w-full">
      <div
        class="grid gap-y-4 sm:grid-cols-1 md:grid-rows-1 md:grid-cols-3 md:gap-4"
      >
        <div v-for="i in 3" :key="i" class="card bg-primary">
          <div class="card-body">
            <h2 class="card-title">{{ $i18n.t(`feature.${i}.title`) }}</h2>
            <p>{{ $i18n.t(`feature.${i}.text`) }}</p>
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

definePageMeta({
  title: 'page.products.argama',
  layout: 'vs-default',
  layoutOptions: {
    center: false,
  },
})
</script>
<script lang="ts">
export default {
  name: 'PageProductsArgama',
}
</script>
<i18n>
{
    "en": {
        "hero": {
            "title": "Argama Network",
            "text": "An upcoming project which provides cloud services like storage for ExpidusOS."
        },
        "features-title": "Features",
        "feature": {
            "1": {
                "title": "Private",
                "text": "The Argama Network does not sell any user data to advertisers."
            },
            "2": {
                "title": "Secure",
                "text": "Kept up to date and implements industry standard encryption."
            },
            "3": {
                "title": "Federated",
                "text": "We allow other companies, organizations, and individuals to run their own instance of the Argama Network. We even support transfering data between any instance."
            }
        }
    }
}
</i18n>
