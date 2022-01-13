<template>
	<div style="padding-top: 25px">
	  <v-row justify="center" align="start">
			<v-col cols="12">
				<v-row justify="center" align="center">
					<v-col cols="12">
						<h1 id="about" class="text-center">Supporting Midstall</h1>
					</v-col>
				</v-row>
			</v-col>
		</v-row>
		<v-row justify="center" align="center">
			<v-col cols="12" md="4" lg="3" xl="3">
				<v-card>
					<v-card-title>Volunteering</v-card-title>
					<v-card-text>
						We accept anyone who meets our criteria to join as a volunteer. However, as a volunteer, compensation is not expected but can be arranged if we deem it possible.

						<h4>Criteria</h4>
						<ul>
							<li>Available on Sunday at 5 PM PST (<b>recommended</b>)</li>
							<li>Knows: C++, Vala, JS/TS (including Node.JS), and/or HTML</li>
							<li>Can use Docker and Git</li>
							<li>Able to work with Linux systems</li>
						</ul>

						<p>To apply, please join the Discord server and message one of the CEO's or send us an E-Mail at <a href="mailto:apply@midstall.com" class="text--primary">apply@midstall.com</a>.</p>
					</v-card-text>
				</v-card>
			</v-col>
			<v-col cols="12" md="4" lg="3" xl="3">
				<v-card>
					<v-card-title>Donating</v-card-title>
					<v-card-text>
						If you are unable to volunteer your time or your willing to donate, we are on multiple payment platforms.
						<p>We are on <a href="https://patreon.com/MidstallSoftware" class="text--primary"><v-icon>mdi-patreon</v-icon> /MidstallSoftware</a>. Or you may find us on <a href="https://liberapay.com/ExpidusOS/" class="text--primary">LiberaPay</a>.</p>
					</v-card-text>
				</v-card>
			</v-col>
		</v-row>
	</div>
</template>
<script>
export default {
	head: {
		title: 'Support Us',
		meta: [
			{ hid: 'og:title', name: 'og:title', content: 'Support Us | Midstall Software' },
			{ hid: 'description', name: 'description', content: 'Midstall Software is in its infancy so we need all the help we can get.' },
			{ hid: 'og:description', name: 'og:description', content: 'Midstall Software is in its infancy so we need all the help we can get.' }
		]
	}
}
</script>
