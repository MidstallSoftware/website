<template>
	<div>
	  <v-row justify="center" align="start">
			<v-col cols="12">
				<v-row justify="center" align="center">
					<v-col cols="12">
						<h1 id="about" class="text-center">About Midstall</h1>
					</v-col>
				</v-row>
			</v-col>
		</v-row>
	  <v-row justify="center" align="start">
			<v-col cols="12" md="4" lg="3" xl="3">
				<v-card>
					<v-card-title>Who we are</v-card-title>
					<v-card-text>
						A group of passionate developers who's goal is to provide quality software that fits within the FOSS philosophy.
						We aim for maximum compatibility without causing degrading performance or large resource requirements on the hardware.
					</v-card-text>
				</v-card>
			</v-col>
			<v-col cols="12" md="4" lg="3" xl="3">
				<v-card>
					<v-card-title>What is our motivation</v-card-title>
					<v-card-text>
						We believe that Linux is destined to become a large player in the OS market. With this belief, we are developing our own ecosystem around Linux.
						An ecosystem that is comparable to others which already exist but is open source will mean that self-hosting is possible.
						This is because there are people who may not trust us with their data. We believe in this as a right including the freedom to modify.
					</v-card-text>
				</v-card>
			</v-col>
		</v-row>
		<v-row justify="center" align="start">
			<v-col cols="12" md="4" lg="3" xl="3">
				<v-card>
					<v-card-title>How is our software priced</v-card-title>
					<v-card-text>
						The majority of our software is free. Third party games and some software on the ExpidusOS Application Store may come at a cost.
						However when it comes to the online services we provide, it is priced based on tiers.
						Despite that, there is a free option and we do allow self-hosting with no added cost.
					</v-card-text>
				</v-card>
			</v-col>
			<v-col cols="12" md="4" lg="3" xl="3">
				<v-card>
					<v-card-title>What data we collect from users</v-card-title>
					<v-card-text>
						We attempt to collect as little as necessary. In fact with Project Argama, users may choose what we collect and sell to third parties.
						This is to comply with the European GDPR laws but we also believe in the right to choosing who your data is sold to.
					</v-card-text>
				</v-card>
			</v-col>
		</v-row>
		<v-row justify="center" align="start">
			<v-col cols="12" md="6" lg="6" xl="6">
				<v-row justify="center" align="start">
					<v-col cols="12">
						<h1 id="team" class="text-center">Our Team</h1>
					</v-col>
				</v-row>
				<v-row>
					<v-col v-for="(member, index) in team" :key="index" cols="12" md="12" lg="6" xl="6">
						<v-card>
							<v-list-item three-line>
								<v-list-item-content>
									<v-list-item-title class="text-h5 mb-1">
										{{ member.name }}
									</v-list-item-title>

									<v-list-item-subtitle class="text-overline mb-4">
										<p v-if="member.positions.length > 1">Positions: {{ member.positions.join(', ') }}</p>
										<p v-else>Position: {{ member.positions[0] }}</p>
										<p>E-Mail: <a :href="'mailto:' + member.name.split(' ').join('.').toLowerCase()" class="text--primary">{{ member.name.split(' ').join('.').toLowerCase() }}@midstall.com</a></p>
									</v-list-item-subtitle>

									<p class="subtitle-1" style="font-size: 0.9rem !important">{{ member.blurb }}</p>
								</v-list-item-content>
								<v-list-item-avatar tile size="80" :color="member.avatar == null ? 'grey' : null">
									<v-img v-if="member.avatar != null" :src="member.avatar" />
									<v-icon v-else-if="member.icon != null">mdi-{{ member.icon }}</v-icon>
									<v-icon v-else>mdi-face-man</v-icon>
								</v-list-item-avatar>
							</v-list-item>

							<v-card-actions v-if="member.links != null">
								<a v-for="link in member.links" :key="link.href" :href="link.href">
									<v-btn text color="teal accent-4">{{ link.name }}</v-btn>
								</a>
							</v-card-actions>
						</v-card>
					</v-col>
				</v-row>
			</v-col>
		</v-row>
		<v-row justify="center" align="start">
			<v-col cols="12" md="4" lg="3" xl="3">
				<v-row justify="center" justify-md="start" align="start">
					<v-col cols="12">
						<h1 id="sites">Sites we're on</h1>
					</v-col>
				</v-row>
				<v-row>
					<v-col cols="12">
						<SitesCard style="padding-bottom:25px" />
					</v-col>
				</v-row>
			</v-col>
			<v-col cols="12" md="4" lg="3" xl="3">
				<v-row justify="center" justify-md="start" align="start">
					<v-col cols="12">
						<h1 id="info">More information on Midstall Software</h1>
					</v-col>
				</v-row>
				<v-row>
					<v-col cols="12">
						<v-card>
							<v-card-text>
								<p><a href="/about/history" class="text--primary">Our History</a></p>
							</v-card-text>
						</v-card>
					</v-col>
				</v-row>
				<v-row justify="center" justify-md="start" align="start">
					<v-col cols="12">
						<h1 id="contact">Contact Us</h1>
					</v-col>
				</v-row>
				<v-row>
					<v-col cols="12">
						<v-card>
							<v-card-text>
								<p>If you have any questions or comments for us, please send us an E-Mail at <a href="mailto:inquiry@midstall.com" class="text--primary">inquiry@midstall.com</a> or you may send us a Tweet at <a href="https://twitter.com/MidstallSW" class="text--primary">@MidstallSW</a>.</p>
							</v-card-text>
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
			team: [
				{
					name: 'Tristan Ross',
					positions: ['CEO', 'Founder'],
					avatar: require('~/assets/img/team/tristan.jpg'),
					blurb: 'Hello, I am Tristan Ross. I am largely responsible for what goes on at Midstall Software.',
					links: [{ name: 'GitHub', href: 'https://github.com/RossComputerGuy'}]
				},
				{
					name: 'Travis Brinkert',
					positions: ['CEO', 'Founder'],
					avatar: require('~/assets/img/team/travis.jpg'),
					blurb: 'Hello, I am a founder',
					links: null
				},
				{
					name: 'James Marcus Ross',
					positions: ['Advisor'],
					avatar: null,
					icon: null,
					blurb: '',
					links: null
				},
				{
					name: 'Nathan Ritchie',
					positions: ['UI Designer'],
					avatar: null,
					icon: null,
					blurb: '',
					links: null
				},
				{
					name: 'Carter Kelso',
					positions: ['Cloud Engineer'],
					avatar: null,
					icon: null,
					blurb: '',
					links: null
				}
			]
		}
	},
	head: {
		title: 'About',
		meta: [
      { hid: 'description', name: 'description', content: 'About Midstall Software' }
		]
	}
}
</script>
