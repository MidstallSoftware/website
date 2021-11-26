<template>
	<v-row justify="center" align="center">
		<v-col cols="12" style="padding-bottom: 0">
			<v-parallax :src="require('~/assets/img/expidus.png')">
				<v-row align="center">
					<v-col cols="6" sm="4" md="3">
						<v-card>
							<v-card-title>Introducing ExpidusOS</v-card-title>
							<v-card-text>
								<p>The free and open source operating system which provides a reliable, private, and secure ecosystem.</p>
								<a href="https://expidusos.com/download">
									<v-btn class="text--primary">
										Download
									</v-btn>
								</a>
							</v-card-text>
						</v-card>
					</v-col>
				</v-row>
			</v-parallax>
		</v-col>
		<v-col cols="12" style="padding-top: 0; padding-bottom: 0;">
			<v-parallax :src="require('~/assets/img/expidus2.png')">
				<v-row align="center">
					<v-col cols="6" sm="4" md="3">
						<v-card>
							<v-card-title>Private</v-card-title>
							<v-card-text>
								<p>ExpidusOS allows users to live a life without being monitored by their own computer.</p>
							</v-card-text>
						</v-card>
					</v-col>
				</v-row>
			</v-parallax>
		</v-col>
		<v-col cols="12" style="padding-top: 0; padding-bottom: 0;">
			<v-parallax :src="require('~/assets/img/expidus3.png')">
				<v-row align="center">
					<v-col cols="6" sm="4" md="3">
						<v-card>
							<v-card-title>Secure</v-card-title>
							<v-card-text>
								<p>The operating system comes with encryption enabled on any device you choose to install it onto, even phones.</p>
								<a href="https://expidusos.com/#secure">
									<v-btn class="text--primary">
										Learn More
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
				<v-card-title>Feature rich</v-card-title>
				<v-card-text>
					<p>ExpidusOS comes with many feature to improve the quality of life and ease of use. We're also constantly looking for new features to implement.</p>
					<a href="https://expidusos.com/#features">
						<v-btn class="text--primary">
							Learn More
						</v-btn>
					</a>
				</v-card-text>
			</v-card>
		</v-col>
		<v-col cols="12" sm="12" md="6" lg="3" xl="3">
			<v-card>
				<v-card-title>Manageable</v-card-title>
				<v-card-text>
					<p>Businesses, schools, and familes may wish to limit devices so that is possible with Project Argama. However, these features come at a selective price which you pay as used.</p>
					<a href="https://expidusos.com/#managable">
						<v-btn class="text--primary">
							Learn More
						</v-btn>
					</a>
				</v-card-text>
			</v-card>
		</v-col>
		<v-col cols="12" sm="12" md="6" lg="3" xl="3">
			<v-card>
				<v-card-title>Cloud Integrated</v-card-title>
				<v-card-text>
					<p>The operating system ships with support for utilizing Project Argama, a cloud based ecosystem.
					This allows users to install applications, sync devices, and manage their own device remotely.</p>
					<a href="/products/argama">
						<v-btn class="text--primary">
							Learn More
						</v-btn>
					</a>
				</v-card-text>
			</v-card>
		</v-col>
	</v-row>
</template>
<script>
export default {
	head: {
		title: 'ExpidusOS',
		meta: [
      { hid: 'description', name: 'description', content: 'A private and secure operating system provided by Midstall Software.' }
		]
	}
}
</script>
