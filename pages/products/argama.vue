<template>
  <div style="padding-top: 25px">
    <v-row justify="center" align="start">
      <v-col cols="12" md="6" lg="6" xl="6">
        <v-parallax :src="require('~/assets/img/argama.png')">
          <v-row justify="left" align="end" style="margin-bottom: 25px">
            <v-col cols="3">
              <v-card>
                <v-card-title>{{ $t('product.argama.name') }}</v-card-title>
                <v-card-text>{{ $t('product.argama.caption') }}</v-card-text>
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
    title: 'Project Argama',
    meta: [
      {
        hid: 'og:title',
        name: 'og:title',
        content: 'Project Argama | Midstall Software',
      },
      {
        hid: 'og:description',
        name: 'og:description',
        content: 'The online services that we provide.',
      },
      {
        hid: 'description',
        name: 'description',
        content: 'The online services that we provide.',
      },
    ],
  },
}
</script>
