<template>
	<div style="padding-top: 25px">
	  <v-row justify="center" align="start">
			<v-col cols="12" md="10" lg="6" xl="6">
				<v-parallax :src="require('~/assets/img/expidusos.png')">
				  <v-row justify="left" align="end">
						<v-col cols="6">
							<h2 class="image-caption">{{ $t('slogan') }}</h2>
						</v-col>
					</v-row>
				</v-parallax>
			</v-col>
		</v-row>
		<v-row class="d-none d-md-flex" justify="center" align="start">
			<v-col cols="12" md="10" lg="6" xl="6">
				<v-row justify="center" justify-md="start">
					<v-col cols="12" md="6" lg="6" xl="6">
						<h1>{{ $t('block1') }}</h1>
					</v-col>
					<v-col cols="12" md="6" lg="6" xl="6">
						<h1>{{ $t('block2') }}</h1>
					</v-col>
				</v-row>
			</v-col>
		</v-row>
		<v-row justify="center" align="start">
			<v-col cols="12" md="10" lg="6" xl="6">
				<v-row v-for="(pnew, index) in pnews" :key="index">
					<v-col v-if="pnew.product != null" cols="12" md="6" lg="6" xl="6">
						<v-card min-height="100%">
							<v-card-title>{{ $t('product.' + pnew.product + '.name') }}</v-card-title>
							<v-card-text>{{ $t('product.' + pnew.product + '.caption') }}</v-card-text>
							<v-card-actions>
								<a :href="'/products/' + pnews.product"><v-btn text color="teal accent-4">{{ $t('learn-more') }}</v-btn></a>
							</v-card-actions>
						</v-card>
					</v-col>
					<v-col v-if="pnew.post != null" cols="12" md="6" lg="6" xl="6">
						<v-card min-height="100%">
							<v-card-title>{{ $t('news.' + pnew.post.split('-').join('.') + '.title') }}</v-card-title>
							<v-card-subtitle>{{ pnew.post }}</v-card-subtitle>
							<v-card-text>{{ $t('news.' + pnew.post.split('-').join('.') + '.content') }}</v-card-text>
						</v-card>
					</v-col>
				</v-row>
			</v-col>
		</v-row>
	  <v-row justify="center" align="center">
			<v-col cols="12" md="10" lg="6" xl="6">
				<v-parallax :src="require('~/assets/img/argama.png')">
				</v-parallax>
			</v-col>
		</v-row>
		<v-row class="d-none d-md-flex" justify="center" align="start">
			<v-col cols="12" md="10" lg="6" xl="6">
				<v-row justify="center" justify-md="start">
					<v-col cols="12" md="6" lg="6" xl="6">
						<h1>{{ $t('block3') }}</h1>
					</v-col>
					<v-col cols="12" md="6" lg="6" xl="6">
						<h1>{{ $t('block4') }}</h1>
					</v-col>
				</v-row>
			</v-col>
		</v-row>
		<v-row justify="center" align="start">
			<v-col cols="12" md="10" lg="6" xl="6">
				<v-row>
					<v-col cols="12" md="6" lg="6" xl="6">
						<v-card min-height="100%">
							<v-card-title>{{ $t('block3.title') }}</v-card-title>
							<v-card-text>{{ $t('block3.content') }}</v-card-text>
							<v-card-actions>
								<a href="/about"><v-btn text color="teal accent-4">{{ $t('learn-more') }}</v-btn></a>
							</v-card-actions>
						</v-card>
					</v-col>
					<v-col cols="12" md="6" lg="6" xl="6">
						<v-card min-height="100%">
							<v-card-title class="d-md-none d-display">{{ $t('block4') }}</v-card-title>
							<v-card-text>{{ $t('block4.content') }}</v-card-text>
							<v-card-actions>
								<a href="/supporting"><v-btn text color="teal accent-4">{{ $t('learn-more') }}</v-btn></a>
							</v-card-actions>
						</v-card>
					</v-col>
				</v-row>
			</v-col>
		</v-row>
	</div>
</template>
<script>
export default {
	data() {
		return {
			pnews: [
				{ product: 'expidusos', post: '2022-01-13' },
				{ product: 'argama', post: '2022-01-07' }
			]
		}
	},
	head: {
		title: 'Home',
		meta: [
			{ hid: 'og:title', name: 'og:title', content: 'Home | Midstall Software' }
		]
	}
}
</script>
<i18n>
{
	"en": {
		"block1": "Our Products",
		"block2": "News",
		"block3": "Who we are",
		"block3.title": "The power of the future",
		"block3.content": "At Midstall Software, we’re always looking to develop better and new solutions to modern problems. We follow the FOSS philosophy as it allows a better relationship between the developers here and users.",
		"block4": "Interested in supporting us?",
		"block4.content": "With our software being open source, any developer who meets our needs is welcomed to contribute code. If your not a developer, you may support us on Patreon or LiberaPay.",
		"news.2022.01.13.title": "Resignation of Travis Brinkert",
		"news.2022.01.13.content": "Due to private matters, Traivs Brinkert, decided to resign from Midstall Software. We wish him the best of luck with his future as he has been with us since the beginning.",
		"news.2022.01.07.title": "New website design",
		"news.2022.01.07.content": "Our website has been redesigned to be more modern and easier to navigate. Not all pages will be updated at once as we are rolling this out per page."
	}
}
</i18n>
<style>
.image-caption {
	margin-bottom: 32pt;
	margin-left: 32pt;
}
</style>
