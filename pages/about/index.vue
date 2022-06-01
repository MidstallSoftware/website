<template>
  <div>
    <h1 class="text-center text-5xl font-bold py-8">{{ $i18n.t('title') }}</h1>
    <div class="justify-center px-8 h-fit w-full">
      <div
        class="grid gap-y-4 sm:grid-cols-1 md:grid-rows-1 md:grid-cols-4 md:gap-4"
      >
        <div v-for="i in 4" :key="i" class="card bg-primary">
          <div class="card-body">
            <h2 class="card-title">{{ $i18n.t(`about.${i}.title`) }}</h2>
            <p>{{ $i18n.t(`about.${i}.text`) }}</p>
          </div>
        </div>
      </div>
    </div>
    <h1 class="text-center text-5xl font-bold py-8">
      {{ $i18n.t('team-title') }}
    </h1>
    <div class="justify-center px-8 h-fit w-full">
      <div class="grid gap-y-4 sm:grid-cols-1 md:grid-cols-2 md:gap-4">
        <div
          v-for="(member, i) in team"
          :key="i"
          class="card card-side bg-primary"
        >
          <figure v-if="member.image" class="overflow-hidden">
            <img :src="member.image" class="h-[16rem] w-[13rem]" />
          </figure>
          <div class="card-body">
            <h2 class="card-title">{{ member.name }}</h2>
            <i18n-t
              class="text-sm"
              :keypath="member.positions.length > 1 ? 'positions' : 'position'"
              tag="p"
            >
              <span>{{ member.positions.join(', ') }}</span>
            </i18n-t>
            <i18n-t class="text-sm" keypath="email" tag="p">
              <a
                class="underline"
                :href="
                  'mailto:' +
                  member.name.split(' ').join('.').toLowerCase() +
                  '@midstall.com'
                "
                target="_blank"
                >{{
                  member.name.split(' ').join('.').toLowerCase()
                }}@midstall.com</a
              >
            </i18n-t>
            <p>
              {{
                $i18n.t(
                  'team.' + member.name.split(' ').join('-').toLowerCase()
                )
              }}
            </p>
            <vs-nav-menu :links="member.links" horizontal />
          </div>
        </div>
      </div>
    </div>
    <h1 class="text-center text-5xl font-bold py-8">
      {{ $i18n.t('more-title') }}
    </h1>
    <div class="justify-center px-8 h-fit w-full">
      <div class="flex flex-col w-full lg:flex-row">
        <div class="card bg-primary">
          <div class="card-body">
            <p>
              <i18n-t keypath="more.inquiry.text0" tag="span">
                <a
                  href="mailto:inquiry@midstall.com"
                  target="_blank"
                  class="underline"
                  >inquiry@midstall.com</a
                >
              </i18n-t>
              <i18n-t keypath="more.inquiry.text1" tag="span">
                <a
                  href="https://twitter.com/MidstallSW"
                  target="_blank"
                  class="underline"
                  >@MidstallSW</a
                >
              </i18n-t>
            </p>
          </div>
        </div>
        <div
          class="divider sm:hidden md:inline-block lg:divider-horizontal"
        ></div>
        <div class="card bg-primary">
          <div class="card-body">
            <h2 class="card-title">{{ $i18n.t('more.rops.title') }}</h2>
            <p>{{ $i18n.t('more.rops.text') }}</p>
          </div>
        </div>
      </div>
    </div>
  </div>
</template>
<script setup lang="ts">
import { mdiGithub, mdiTwitter } from '@mdi/js'
import { useI18n } from '@midstallsoftware/vista/dist/runtime/composables/vista'
import teamTristan from '~/assets/team/tristan.ross.jpg'
import teamCarter from '~/assets/team/carter.kelso.png'
import { definePageMeta } from '#imports'

const $i18n = useI18n()

const team = [
  {
    name: 'Tristan Ross',
    positions: ['CEO', 'Founder'],
    links: [
      {
        icon: mdiGithub,
        url: 'https://github.com/RossComputerGuy',
      },
      {
        icon: mdiTwitter,
        url: 'https://twitter.com/RossComputerGuy',
      },
    ],
    image: teamTristan,
  },
  {
    name: 'James Marcus Ross',
    positions: ['Advisor'],
  },
  {
    name: 'Nathan Ritchie',
    positions: ['UI Designer'],
  },
  {
    name: 'Carter Kelso',
    positions: ['Cloud Engineer'],
    image: teamCarter,
  },
]

definePageMeta({
  title: 'page.about.home',
  layout: 'vs-default',
})
</script>
<script lang="ts">
export default {
  name: 'PageAboutIndex',
}
</script>
<i18n>
{
    "en": {
        "title": "About Midstall Software",
        "about": {
            "1": {
                "title": "Who we are",
                "text": "A group of passionate developers who's goal is to provide quality software that fits within the FOSS philosophy. We aim for maximum compatibility without causing degrading performance or large resource requirements on the hardware. "
            },
            "2": {
                "title": "What is our motivation",
                "text": "We believe that Linux is destined to become a large player in the OS market. With this belief, we are developing our own ecosystem around Linux. An ecosystem that is comparable to others which already exist but is open source will mean that self-hosting is possible. This is because there are people who may not trust us with their data. We believe in this as a right including the freedom to modify. "
            },
            "3": {
                "title": "How is our software priced",
                "text": "The majority of our software is free. Third party games and some software on the ExpidusOS Application Store may come at a cost. However when it comes to the online services we provide, it is priced based on tiers. Despite that, there is a free option and we do allow self-hosting with no added cost. "
            },
            "4": {
                "title": "What data we collect from users",
                "text": "We attempt to collect as little as necessary. In fact with the Argama Network, users may choose what we collect and sell to third parties. This is to comply with the European GDPR laws but we also believe in the right to choosing who your data is sold to. "
            }
        },
        "team-title": "Our Team",
        "email": "E-Mail: {0}",
        "position": "Position: {0}",
        "positions": "Positions: {0}",
        "team": {
            "tristan-ross": "Hello, I am Tristan Ross. I am largely responsible for what goes on at Midstall Software.",
            "james-marcus-ross": "Hello, world.",
            "nathan-ritchie": "Hello, world",
            "carter-kelso": "My name is carter kelso, I am a dedicated I.T professional specializing in hardware repair and diagnosis aswell as large scale network configuration. I am excited to work with the team at Midstall."
        },
        "more-title": "More Information",
        "more": {
            "inquiry": {
                "text0": "If you have any questions or comments for us, please send us an E-Mail at {0}.",
                "text1": "You may also send us a Tweet at {0}. These methods of contact may also be used to reach out to our customer service. However, we do not have a publicly available phone number at this time."
            },
            "rops": {
                "title": "Region of Operation",
                "text": "We operate in the United States, however our services are available outside of the U.S. We also accept most currencies using Stripe but we primarily use the United States Dollar (USD). The majority of our content is in English but we are always accepting outside contributors to translate our software and websites to any language."
            }
        }
    }
}
</i18n>
