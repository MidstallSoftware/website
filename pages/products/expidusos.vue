<template>
  <div style="padding-top: 25px">
    <v-row justify="center" align="start">
      <v-col cols="12" md="6" lg="6" xl="6">
        <v-parallax :src="require('~/assets/img/expidusos.png')">
          <v-row justify="left" align="end" style="margin-bottom: 25px">
            <v-col cols="3">
              <v-card>
                <v-card-title>{{ $t('product.expidusos.name') }}</v-card-title>
                <v-card-text>{{ $t('product.expidusos.caption') }}</v-card-text>
              </v-card>
            </v-col>
          </v-row>
        </v-parallax>
      </v-col>
    </v-row>
  </div>
</template>
<script>
export default {
  head: {
    title: 'ExpidusOS',
    meta: [
      {
        hid: 'og:title',
        name: 'og:title',
        content: 'ExpidusOS | Midstall Software',
      },
      {
        hid: 'og:description',
        name: 'og:description',
        content:
          'A private and secure operating system provided by Midstall Software.',
      },
      {
        hid: 'description',
        name: 'description',
        content:
          'A private and secure operating system provided by Midstall Software.',
      },
    ],
  },
}
</script>
