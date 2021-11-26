<template>
  <v-row justify="center" align="center" style="padding-top: 20px">
		<v-col cols="12" sm="12" md="6" lg="3" xl="3">
			<v-card>
				<v-card-title>What is open source?</v-card-title>
				<v-card-text>
					Many companies keep their source code a secret, that means everyone except the developers have access to the code. However, we are different. We aim to provide the best user experience we can. To achieve that, we advocate for open source software. This means we allow everyone to see our code which goes into the products we have created. Because of this, we allow people to contribute meaningful code into our products. Some of that code may be new features, fixes, security patches, etc.
				</v-card-text>
			</v-card>
		</v-col>
		<v-col cols="12" sm="12" md="6" lg="3" xl="3">
			<v-card>
				<v-card-title>Where can I find the code?</v-card-title>
				<v-card-text>
					<p>We store our code <a href="https://github.com/MidstallSoftware" class="text--primary">here on GitHub</a> for any Midstall Software related product. If you are particularly interested in ExpidusOS, it is available <a href="https://github.com/ExpidusOS" class="text--primary">here</a>.</p>
				</v-card-text>
			</v-card>
		</v-col>
		<v-col cols="12" sm="12" md="6" lg="3" xl="3">
			<v-card>
				<v-card-title>Any requirements to contributing?</v-card-title>
				<v-card-text>
					We do in fact have requirements for any contributions made to our products. The majorty of our products are written in either C or Vala so you must know those. Second, your contributions must be meaningful. This is subjectively based on what product or compoent of a product you are wanting to contribute to. We develop ExpidusOS on Linux so it works best if you already utilize that. If you are contributing something to any of our web repositories then you can test using Docker or with NPM on your current machine.
				</v-card-text>
			</v-card>
		</v-col>
	</v-row>
</template>
<script>
export default {
	head: {
		title: 'Open Source',
		meta: [
      { hid: 'description', name: 'description', content: 'Midstall Software, your friendly open source technology company.' }
		]
	}
}
</script>
