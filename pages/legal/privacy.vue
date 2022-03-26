<template>
  <div style="padding-top: 25px">
    <v-row justify="center">
      <v-col cols="12" md="10" lg="8" xl="8">
        <v-card>
          <v-card-title>{{ $t('page-title') }}</v-card-title>
          <v-card-text>
            <div>
              <p>{{ $t('pg-1') }}</p>
              <p>{{ $t('pg-2') }}</p>
            </div>
            <div>
              <h1>{{ $t('sec-1') }}</h1>
              <p>{{ $t('sec-1-pg-1') }}</p>
              <ul>
                <li v-for="i in 1" :key="i">{{ $t(`sec-1-pg-1-li-${i}`) }}</li>
              </ul>
            </div>
            <div>
              <h1>{{ $t('sec-2') }}</h1>
              <p>{{ $t('sec-2-pg-1') }}</p>
              <ul>
                <li v-for="i in 2" :key="i">{{ $t(`sec-2-pg-1-li-${i}`) }}</li>
              </ul>
            </div>
            <div>
              <h1>{{ $t('sec-3') }}</h1>
              <p>{{ $t('sec-3-pg-1') }}</p>
            </div>
            <div>
              <h1>{{ $t('sec-4') }}</h1>
              <p>{{ $t('sec-4-pg-1') }}</p>
            </div>
            <div>
              <h1>{{ $t('sec-5') }}</h1>
              <p>{{ $t('sec-5-pg-1') }}</p>
            </div>
            <div>
              <h1>{{ $t('sec-6') }}</h1>
              <p>{{ $t('sec-6-pg-1') }}</p>
            </div>
          </v-card-text>
        </v-card>
      </v-col>
    </v-row>
  </div>
</template>
<i18n>
{
  "en": {
    "page-title": "Privacy Policy",
    "page-desc": "The privacy policy for midstall.com",
    "pg-1": "This privacy policy (\"policy\") will help you understand how Midstall Software (\"us\", \"we\", or \"our\") uses and protects the data you provide to us when you visit and use https://midstall.com (\"website\").",
    "pg-2": "We reserve the right to change this policy at any given time. If you want to make sure that you are up to date with the latest changes, we advise you frequently visit this page.",
    "sec-1": "What User Data We Collect",
    "sec-1-pg-1": "When you visit this website, we may collect the following data:",
    "sec-1-pg-1-li-1": "Your IP address.",
    "sec-2": "Why We collect Your Data",
    "sec-2-pg-1": "We are collecting your data for several reasons:",
    "sec-2-pg-1-li-1": "To determine any possible issues with our website.",
    "sec-2-pg-1-li-2": "To determine \"popularity\" of our website.",
    "sec-3": "Safeguarding and Securing the Data",
    "sec-3-pg-1": "Midstall Software is commited to securing your data and keeping it confidential. This is why the website, https://midstall.com, is basic and only logs IP addresses",
    "sec-4": "Our Cookie Policy",
    "sec-4-pg-1": "Midstall Software uses cookies for the user's preferred language.",
    "sec-5": "Links to Other Websites",
    "sec-5-pg-1": "Unless you navigate to one of our other websites, we are not responsible for any interactions between any 3rd party websites or services. If you follow a link to one of our other websites, we highly recommend you look at the privacy policy for that particular website.",
    "sec-6": "Payments and Purchases",
    "sec-6-pg-1": "Midstall Software may use Stripe on some 1st part websites to handle payments and purchases of products and services. We do not collect any data besites the Stripe Customer ID and all payment information is limited to Stripe. If you notice a fradulent charge from Stripe, we recommend you contact Stripe."
  }
}
</i18n>
<script lang="ts">
import { Vue, Component } from 'vue-property-decorator'

@Component({
  head() {
    return {
      title: this.$t('page-title').toString(),
      meta: [
        {
          hid: 'og:title',
          name: 'og:title',
          content: this.$t('full-title', {
            page: this.$t('page-title'),
          }).toString(),
        },
        {
          hid: 'description',
          name: 'description',
          content: this.$t('page-desc').toString(),
        },
        {
          hid: 'og:description',
          name: 'og:description',
          content: this.$t('page-desc').toString(),
        },
      ],
    }
  },
})
export default class PageLegalPrivacy extends Vue {}
</script>
