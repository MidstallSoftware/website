<template>
  <div>
    <h1 class="text-center text-5xl font-bold py-8">{{ $i18n.t('title') }}</h1>
    <div class="justify-center px-8 h-fit w-full">
      <div class="grid gap-y-4 grid-cols-1 md:gap-4">
        <div v-for="i in 4" :key="i" class="card card-side bg-primary">
          <div class="card-body">
            <h2 class="card-title">{{ $i18n.t(`card.${i}.title`) }}</h2>
            <i18n-t class="text-sm" :keypath="`card.${i}.date`" tag="p">
              <b>{{ $i18n.t('now') }}</b>
            </i18n-t>
            <p>{{ $i18n.t(`card.${i}.content`) }}</p>
          </div>
        </div>
      </div>
    </div>
  </div>
</template>
<script setup lang="ts">
import { useI18n } from '@midstallsoftware/vista/dist/runtime/composables/vista'
import { definePageMeta } from '#imports'

const $i18n = useI18n()

definePageMeta({
  title: 'page.about.history',
  layout: 'vs-default',
})
</script>
<script lang="ts">
export default {
  name: 'PageAboutHistory',
}
</script>
<i18n>
{
    "en": {
        "title": "History of Midstall Software",
        "now": "Now",
        "card": {
            "1": {
                "title": "Beginning",
                "date": "Oct. 2020 - Jan. 2021",
                "content": "Midstall Software was created with the inception of ExpidusOS and both were created by Tristan Ross. Originally, ExpidusOS was going to be built on top of AwesomeWM and there were a few test builds utilizing it. The goal of ExpidusOS was to create an OS which can run on both phones and desktops under the same codebase. This is because many operating systems have to have seperate codebases for their mobile and desktop counterparts. Tristan Ross saw the potential with this operating system and brough on Travis Brinkert as a co-founder. Both would work together but Tristan would manage the software side of things. Travis would manage the business side of things during this period. As the early days rolled by, it was determined that AwesomeWM was insufficient with being able to provide what is needed to reach the goal. This is when XFCE4 was forked and modified to run better for phones. This eventually became known as \"ExpidusOS Willamette v0.1.0-prealpha Test Release #1\" and released towards the end of January of 2021. Over time, people looked at it and became interested in it."
            },
            "2": {
                "title": "Genesis",
                "date": "Feb. 2021 - Nov. 2021",
                "content": "With the mild success of the first test release, it was determined that XFCE4 would be insufficient with reaching the goal that was set out by Tristan Ross. This sparked several prototyping designs, some used Mutter and some used Flutter on top of other window managers. During this time of prototyping, Carter Kelso and Nathan Ritchie was brough on. After several months, a successful design of the \"ExpidusOS Shell\" was found. This was known as \"ExpidusOS Shell Iteration #4\" which came to be known as the \"Genesis Shell\". The design of Genesis Shell is highly more advanced when compared to XFCE4. It features a module system which each module provides a monitor layout. The shell determines which monitor should get a particular layout based on which monitors each layout wants. Monitors can also be overridden by the user in testing cases or preference. Another feature of Genesis is that it is designed to run on Wayland, more specifically Wayfire. This means Genesis, by design, of Wayland only. However, it is planned that with either modules or checking the display backend could make it possible for Genesis to run on other display backends. Towards the end of the year, James Marcus Ross was brough on as a business advisor."
            },
            "3": {
                "title": "The New Year",
                "date": "Dec. 2021 - Apr. 2022",
                "content": "With the new year coming around the corner, meetings with all the staff became regular. First it was every two weeks, eventually it became every week on a self-hosted Nextcloud server. The infrastructure running all of the company's websites and services were moved into one Linode instance and managed through Docker. All this would be proxied through Cloudflare to provide an extra layer of security. Over the course of the meetings, the ground-work was put into place to make Midstall Software into a successful company. A company E-Mail server was created, Nextcloud, and various other services. Coming to today, Midstall Software is in the process of becoming an LLC. This is a huge step towards becoming an actual company. However, plans halted when Travis Brinkert decided to resign from Midstall Software on Jan. 13th due to his concern of not being able to contribute. Soon enough, Tristan Ross became concerned for the company's money and began development of Cerus."
            },
            "4": {
                "title": "New Tokyo",
                "date": "Apr. 2022 - {0}",
                "content": "With Cerus being developed, Midstall Software transistioned from Docker to Kubernetes. Midstall also began development of Vista which aims for more consistent websites."
            }
        }
    }
}
</i18n>
