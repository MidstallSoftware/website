<template>
	<div style="padding-top: 25px">
	  <v-row justify="center" align="start">
			<v-col cols="12" md="6" lg="6" xl="6">
				<v-parallax :src="require('~/assets/img/expidus.png')">
				  <v-row justify="left" align="end">
						<v-col cols="6">
							<h2 class="image-caption">{{ $t('slogan') }}</h2>
						</v-col>
					</v-row>
				</v-parallax>
			</v-col>
		</v-row>
		<v-row justify="center" align="start">
			<v-col cols="12" md="3" lg="3" xl="3">
				<v-row justify="center" justify-md="start" align="start">
					<v-col cols="12">
						<h1>{{ $t('block1') }}</h1>
					</v-col>
				</v-row>
				<v-row>
					<v-col v-for="(product, index) in products" :key="index" cols="12">
						<v-card min-height="100%">
							<v-card-title>{{ $t('product.' + product.link + '.name') }}</v-card-title>
							<v-card-text>{{ $t('product.' + product.link + '.caption') }}</v-card-text>
							<v-card-actions>
								<a :href="'/products/' + product.link"><v-btn text color="teal accent-4">{{ $t('learn-more') }}</v-btn></a>
							</v-card-actions>
						</v-card>
					</v-col>
				</v-row>
			</v-col>
			<v-col order="3" cols="12" md="3" lg="3" xl="3">
				<v-row justify="center" justify-md="start" align="start">
					<v-col cols="12">
						<h1>{{ $t('block2') }}</h1>
					</v-col>
				</v-row>
				<v-row>
					<v-col v-for="(post, index) in news" :key="index" cols="12">
						<v-card min-height="100%">
							<v-card-title>{{ $t('news.' + post.date.split('-').join('.') + '.title') }}</v-card-title>
							<v-card-subtitle>{{ post.date }}</v-card-subtitle>
							<v-card-text>{{ $t('news.' + post.date.split('-').join('.') + '.content') }}</v-card-text>
						</v-card>
					</v-col>
				</v-row>
			</v-col>
		</v-row>
	  <v-row justify="center" align="center">
			<v-col cols="12" md="6" lg="6" xl="6">
				<v-parallax :src="require('~/assets/img/expidus.png')">
				</v-parallax>
			</v-col>
		</v-row>
	  <v-row justify="center">
			<v-col cols="12" md="3" lg="3" xl="3">
				<v-row justify="center" justify-md="start">
					<v-col cols="12">
						<h1>{{ $t('block3') }}</h1>
					</v-col>
				</v-row>
				<v-row>
					<v-col cols="12">
						<v-card min-height="100%">
							<v-card-title>{{ $t('block3.title') }}</v-card-title>
							<v-card-text>{{ $t('block3.content') }}</v-card-text>
							<v-card-actions>
								<a href="/about"><v-btn text color="teal accent-4">{{ $t('learn-more') }}</v-btn></a>
							</v-card-actions>
						</v-card>
					</v-col>
				</v-row>
			</v-col>
			<v-col cols="12" md="3" lg="3" xl="3">
				<v-row justify="center" justify-md="start">
					<v-col cols="12">
						<h1>{{ $t('block4') }}</h1>
					</v-col>
				</v-row>
				<v-row>
					<v-col cols="12">
						<v-card min-height="100%">
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
			products: [
				{ link: 'expidusos' },
				{ link: 'argama' }
			],
			news: [
				{ date: '2022-01-07' },
				{ date: '2022-01-06' }
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
		"product.expidusos.name": "ExpidusOS",
		"product.expidusos.caption": "An operating system designed for running on many devices ranging from phones to desktop computers. It is the core of our software ecosystem.",
		"product.argama.name": "Project Argama",
		"product.argama.caption": "The online services that we provide. It makes up a huge chunk of our infrastructure. You can many services ranging from files to streaming videos from different devices.",
		"block1": "Our Products",
		"block2": "News",
		"block3": "Who we are",
		"block3.title": "The power of the future",
		"block3.content": "At Midstall Software, we’re always looking to develop better and new solutions to modern problems. We follow the FOSS philosophy as it allows a better relationship between the developers here and users.",
		"block4": "Interested in supporting us?",
		"block4.content": "With our software being open source, any developer who meets our needs is welcomed to contribute code. If your not a developer, you may support us on Patreon or LiberaPay.",
		"news.2022.01.07.title": "New website design",
		"news.2022.01.07.content": "Our website has been redesigned to be more modern and easier to navigate. Not all pages will be updated at once as we are rolling this out per page.",
		"news.2022.01.06.title": "Midstall becoming an LLC",
		"news.2022.01.06.content": "We're in the process of finalizing our paperwork for becoming an LLC. We hope to submit the documents on Friday, Jan 14th. This will mean that we will be registered as an LLC by the end of the month."
	}
}
</i18n>
<style>
.image-caption {
	margin-bottom: 32pt;
	margin-left: 32pt;
}
</style>
