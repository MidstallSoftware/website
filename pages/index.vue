<template>
	<div style="padding-top: 25px">
	  <v-row justify="center" align="start">
			<v-col order="2" order-md="1" cols="12" md="3" lg="3" xl="3">
				<v-row justify="center" justify-md="start" align="start">
					<v-col cols="12">
						<h1>Our Products</h1>
					</v-col>
				</v-row>
				<v-row>
					<v-col v-for="(product, index) in products" :key="index" cols="12">
						<v-card>
							<v-card-title>{{ product.title }}</v-card-title>
							<v-card-text>{{ product.caption }}</v-card-text>
							<v-card-actions>
								<a :href="'/products/' + product.link"><v-btn text color="teal accent-4">Learn more</v-btn></a>
							</v-card-actions>
						</v-card>
					</v-col>
				</v-row>
			</v-col>
			<v-col order="1" order-md="2" cols="12" md="6" lg="6" xl="6">
				<v-parallax :src="require('~/assets/img/expidus.png')">
				  <v-row justify="left" align="end">
						<v-col cols="6">
							<h2 class="image-caption">Open sourcing technologies for tomorrow</h2>
						</v-col>
					</v-row>
				</v-parallax>
			</v-col>
			<v-col order="3" cols="12" md="3" lg="3" xl="3">
				<v-row justify="center" justify-md="start" align="start">
					<v-col cols="12">
						<h1>News</h1>
					</v-col>
				</v-row>
				<v-row>
					<v-col v-for="(post, index) in news" :key="index" cols="12">
						<v-card>
							<v-card-title>{{ post.title }}</v-card-title>
							<v-card-subtitle>{{ post.date }}</v-card-subtitle>
							<v-card-text>{{ post.content }}</v-card-text>
						</v-card>
					</v-col>
				</v-row>
			</v-col>
		</v-row>
	  <v-row justify="start" align="start">
			<v-col order="2" order-md="1" cols="12" md="3" lg="3" xl="3">
				<v-row justify="center" justify-md="start" align="start">
					<v-col cols="12">
						<h1>Who we are</h1>
					</v-col>
				</v-row>
				<v-row>
					<v-col cols="12">
						<v-card>
							<v-card-title>The power of the future</v-card-title>
							<v-card-text>At Midstall Software, we’re always looking to develop better and new solutions to modern problems. We follow the FOSS philosophy as it allows a better relationship between the developers here and users.</v-card-text>
							<v-card-actions>
								<a href="/about"><v-btn text color="teal accent-4">Learn more</v-btn></a>
							</v-card-actions>
						</v-card>
					</v-col>
					<v-col cols="12">
						<v-card>
							<v-card-title>Interested in supporting us?</v-card-title>
							<v-card-text>With our software being open source, any developer who meets our needs is welcomed to contribute code. If your not a developer, you may support us on Patreon or LiberaPay.</v-card-text>
							<v-card-actions>
								<a href="/supporting"><v-btn text color="teal accent-4">Learn more</v-btn></a>
							</v-card-actions>
						</v-card>
					</v-col>
				</v-row>
			</v-col>
			<v-col order="1" order-md="2" cols="12" md="6" lg="6" xl="6">
				<v-parallax :src="require('~/assets/img/expidus.png')">
				</v-parallax>
			</v-col>
			<v-col order="3" cols="12" md="3" lg="3" xl="3">
				<v-row justify="center" justify-md="start" align="start">
					<v-col cols="12">
						<h1>Sites we're on</h1>
					</v-col>
				</v-row>
				<v-row>
					<v-col cols="12">
						<SitesCard />
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
				{ title: 'ExpidusOS', caption: 'An operating system designed for running on many devices ranging from phones to desktop computers. It is the core of our software ecosystem.', link: 'expidusos' },
				{ title: 'Project Argama', caption: 'The online services that we provide. It makes up a huge chunk of our infrastructure. You can many services ranging from files to streaming videos from different devices.', link: 'argama' }
			],
			news: [
				{ title: 'New website design', date: '2022-01-07', content: 'Our website has been redesigned to be more modern and easier to navigate. Not all pages will be updated at once as we are rolling this out per page.' },
				{ title: 'Midstall becoming an LLC', date: '2022-01-06', content: 'We\'re in the process of finalizing our paperwork for becoming an LLC. We hope to submit the documents on Friday, Jan 14th. This will mean that we will be registered as an LLC by the end of the month.' }
			]
		}
	},
	head: {
		title: 'Home'
	}
}
</script>
<style>
.image-caption {
	margin-bottom: 32pt;
	margin-left: 32pt;
}
</style>
