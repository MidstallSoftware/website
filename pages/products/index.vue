<template>
  <v-row justify="center" align="center">
		<v-col cols="12" style="padding-bottom: 0">
			<v-parallax :src="require('~/assets/img/expidus.png')">
			  <v-row justify="left" align="center">
					<v-col cols="6" sm="4" md="3">
						<v-card>
							<v-card-title>Introducing ExpidusOS</v-card-title>
							<v-card-text>
								<p>The free and open source operating system which provides a reliable, private, and secure ecosystem.</p>
								<a href="/product/expidus">
									<v-btn class="text--primary">
										Learn more
									</v-btn>
								</a>
							</v-card-text>
						</v-card>
					</v-col>
				</v-row>
			</v-parallax>
		</v-col>
		<v-col cols="12" style="padding-top: 0">
			<v-parallax :src="require('~/assets/img/argama.png')">
			  <v-row justify="left" align="center">
					<v-col cols="6" sm="4" md="3">
						<v-card>
							<v-card-title>Project Argama</v-card-title>
							<v-card-text>
								<p>A cloud powered ecosystem which integrates with ExpidusOS.</p>
								<a href="/products/argama">
									<v-btn class="text--primary">
										Learn more
									</v-btn>
								</a>
							</v-card-text>
						</v-card>
					</v-col>
				</v-row>
			</v-parallax>
		</v-col>
	</v-row>
</template>
<script>
export default {
	head: {
		title: 'Products',
		meta: [
      { hid: 'description', name: 'description', content: 'Software and other technology which Midstall Software is resposible for.' }
		]
	}
}
</script>
