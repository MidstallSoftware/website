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
		<v-col cols="12" sm="12" md="6" lg="3" xl="3">
			<v-card>
				<v-card-title>Private</v-card-title>
				<v-card-text>
					Our products are made to only store what is vital. You are in control of your data.
				</v-card-text>
			</v-card>
		</v-col>
		<v-col cols="12" sm="12" md="6" lg="3" xl="3">
			<v-card>
				<v-card-title>Secure</v-card-title>
				<v-card-text>
					Worried about hackers? No need, our products are designed with top notch security and is regularly updated.
				</v-card-text>
			</v-card>
		</v-col>
		<v-col cols="12" sm="12" md="6" lg="3" xl="3">
			<v-card>
				<v-card-title>Reliable</v-card-title>
				<v-card-text>
					Using buggy software is always a pain but don't worry. All of our products are tested heavily before major releases and we're always looking for pesky bugs to squash.
				</v-card-text>
			</v-card>
		</v-col>
		<v-col cols="12" sm="12" md="6" lg="3" xl="3">
			<v-card>
				<v-card-title>Affordable</v-card-title>
				<v-card-text>
					The majority of our software is free and open source. This means no payment necessary to use.
				</v-card-text>
			</v-card>
		</v-col>
	</v-row>
</template>
<script>
export default {
	head: {
		title: 'Home'
	}
}
</script>
