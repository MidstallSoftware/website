<template>
	<div style="padding-top: 25px">
	  <v-row justify="center" align="start">
			<v-col cols="12">
				<v-row justify="center" align="center">
					<v-col cols="12">
						<h1 id="about" class="text-center">{{ $t('page-title') }}</h1>
					</v-col>
				</v-row>
			</v-col>
		</v-row>
		<v-row justify="center" align="start">
			<v-col cols="12" md="10" lg="8" xl="8">
				<v-row>
					<v-col v-for="x in 2" :key="x" cols="12" md="6" lg="6" xl="6">
						<v-card min-height="100%">
							<v-card-title>{{ $t('card' + x + '.title') }}</v-card-title>
							<v-card-text>
								{{ $t('card' + x + '.content') }}
							</v-card-text>
						</v-card>
					</v-col>
				</v-row>
				<v-row>
					<v-col v-for="x in 2" :key="x" cols="12" md="6" lg="6" xl="6">
						<v-card min-height="100%">
							<v-card-title>{{ $t('card' + (x + 2) + '.title') }}</v-card-title>
							<v-card-text>
								{{ $t('card' + (x + 2) + '.content') }}
							</v-card-text>
						</v-card>
					</v-col>
				</v-row>
			</v-col>
		</v-row>
		<v-row justify="center" align="start">
			<v-col cols="12" md="10" lg="8" xl="8">
				<v-row justify="center" align="start">
					<v-col cols="12">
						<h1 id="team" class="text-center" style="padding-top: 25px">{{ $t('team') }}</h1>
					</v-col>
				</v-row>
				<v-row>
					<v-col v-for="(member, index) in team" :key="index" cols="12" md="12" lg="6" xl="4">
						<v-card min-height="100%">
							<v-list-item three-line>
								<v-list-item-content>
									<v-list-item-title class="text-h5 mb-1">
										{{ member.name }}
									</v-list-item-title>

									<v-list-item-subtitle class="text-overline mb-4">
										<p v-if="member.positions.length > 1">Positions: {{ member.positions.join(', ') }}</p>
										<p v-else>Position: {{ member.positions[0] }}</p>
										<p>E-Mail: <a :href="'mailto:' + member.name.split(' ').join('.').toLowerCase() + '@midstall.com'" class="text--primary">{{ member.name.split(' ').join('.').toLowerCase() }}@midstall.com</a></p>
									</v-list-item-subtitle>

									<p class="subtitle-1" style="font-size: 0.9rem !important">{{ $t('team.' + member.name.split(' ').join('.').toLowerCase() + '.blurb') }}</p>
								</v-list-item-content>
								<v-list-item-avatar tile size="80" :color="member.avatar == null ? 'grey' : null">
									<v-img v-if="member.avatar != null" :src="member.avatar" />
									<v-icon v-else-if="member.icon != null">{{ member.icon }}</v-icon>
									<fa v-else :icon="['fas', 'smile']" />
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
			<v-col cols="12" md="10" lg="8" xl="8">
				<v-row justify="center" justify-md="start" align="start">
					<v-col cols="12">
						<h1 id="team" class="text-center" style="padding-top: 25px">{{ $t('card5.title') }}</h1>
					</v-col>
				</v-row>
				<v-row>
					<v-col cols="12">
						<v-card>
							<v-card-text>
								<p v-html="$t('card5.content')"></p>
								<p><a href="/about/history" class="text--primary">{{ $t('history') }}</a></p>
							</v-card-text>
						</v-card>
					</v-col>
				</v-row>
			</v-col>
		</v-row>
	</div>
</template>
<i18n>
{
	"en": {
		"page-title": "About Midstall",
		"card1.title": "Who we are",
		"card1.content": "A group of passionate developers who's goal is to provide quality software that fits within the FOSS philosophy. We aim for maximum compatibility without causing degrading performance or large resource requirements on the hardware.",
		"card2.title": "What is our motivation",
		"card2.content": "We believe that Linux is destined to become a large player in the OS market. With this belief, we are developing our own ecosystem around Linux. An ecosystem that is comparable to others which already exist but is open source will mean that self-hosting is possible. This is because there are people who may not trust us with their data. We believe in this as a right including the freedom to modify.",
		"card3.title": "How is our software priced",
		"card3.content": "The majority of our software is free. Third party games and some software on the ExpidusOS Application Store may come at a cost. However when it comes to the online services we provide, it is priced based on tiers. Despite that, there is a free option and we do allow self-hosting with no added cost.",
		"card4.title": "What data we collect from users",
		"card4.content": "We attempt to collect as little as necessary. In fact with Project Argama, users may choose what we collect and sell to third parties. This is to comply with the European GDPR laws but we also believe in the right to choosing who your data is sold to.",
		"team": "Our Team",
		"team.tristan.ross.blurb": "Hello, I am Tristan Ross. I am largely responsible for what goes on at Midstall Software.",
		"team.james.marcus.ross.blurb": "Hello, world.",
		"team.nathan.ritchie.blurb": "Hello, world.",
		"team.carter.kelso.blurb": "My name is carter kelso, I am a dedicated I.T professional specializing in hardware repair and diagnosis aswell as large scale network configuration. I am excited to work with the team at Midstall.",
		"card5.title": "More Information",
		"card5.content": "If you have any questions or comments for us, please send us an E-Mail at <a href=\"mailto:inquiry@midstall.com\" class=\"text--primary\">inquiry@midstall.com</a> or you may send us a Tweet at <a href=\"https://twitter.com/MidstallSW\" class=\"text--primary\">@MidstallSW</a>.",
		"history": "Our History"
	}
}
</i18n>
<script lang="ts">
import { Vue, Component } from 'vue-property-decorator'

interface TeamMemberLink {
	name: string
	href: string
}

interface TeamMember {
	name: string
	positions: string[]
	avatar: string | null
	icon: string | null
	links: TeamMemberLink[] | null
}

@Component
export default class PageAboutIndex extends Vue {
	public readonly team: TeamMember[] = [
		{
			name: 'Tristan Ross',
			positions: ['CEO', 'Founder'],
			avatar: require('~/assets/img/team/tristan.jpg'),
			icon: null,
			links: [{ name: 'GitHub', href: 'https://github.com/RossComputerGuy'}]
		},
		{
			name: 'James Marcus Ross',
			positions: ['Advisor'],
			avatar: null,
			icon: null,
			links: null
		},
		{
			name: 'Nathan Ritchie',
			positions: ['UI Designer'],
			avatar: null,
			icon: null,
			links: null
		},
		{
			name: 'Carter Kelso',
			positions: ['Cloud Engineer'],
			avatar: require('~/assets/img/team/carter.png'),
			icon: null,
			links: null
		}
	]

	head() {
		return {
			title: 'About',
			meta: [
				{ hid: 'og:title', name: 'og:title', content: 'About | Midstall Software' },
	      { hid: 'description', name: 'description', content: 'About the company, Midstall Software, from sites we\'re on to the people behind the scenes.' },
				{ hid: 'og:description', name: 'og:description', content: 'About the company, Midstall Software, from sites we\'re on to the people behind the scenes.' }
			]
		}
	}
}
</script>
