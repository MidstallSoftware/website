<template>
	<div style="padding-top: 25px">
	  <v-row justify="center" align="start">
			<v-col cols="12">
				<v-row justify="center" align="center">
					<v-col cols="12">
						<h1 id="about" class="text-center">{{ $t('title') }}</h1>
					</v-col>
				</v-row>
			</v-col>
		</v-row>
		<v-row justify="center" align="start">
			<v-col cols="12" md="10" lg="6" xl="6">
				<v-row>
					<v-col cols="12" md="6" lg="6" xl="6">
						<v-card min-height="100%">
							<v-card-title>{{ $t('card1') }}</v-card-title>
							<v-card-text>
								<p>{{ $t('card1.opening') }}</p>

								<h4>Criteria</h4>
								<ul>
									<li>{{ $t('card1.criteria1') }}</li>
									<li>{{ $t('card1.criteria2') }}</li>
									<li>{{ $t('card1.criteria3') }}</li>
								</ul>

								<p v-html="$t('card1.ending', ['<a href=\'mailto:apply@midstall.com\' class=\'text--primary\'>apply@midstall.com</a>'])"></p>
							</v-card-text>
						</v-card>
					</v-col>
					<v-col cols="12" md="6" lg="6" xl="6">
						<v-card min-height="100%">
							<v-card-title>{{ $t('card2') }}</v-card-title>
							<v-card-text v-html="$t('card2.text', ['<a href=\'https://patreon.com/MidstallSoftware\' class=\'text--primary\'>Patreon @MidstallSoftware</a>', '<a href=\'https://liberapay.com/ExpidusOS\' class=\'text--primary\'>LiberaPay</a>'])">
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
		"title": "Supporting Midstall",
		"card1": "Volunteering",
		"card1.opening": "We accept anyone who meets our criteria to join as a volunteer. However, as a volunteer, compensation is not expected but can be arranged if we deem it possible.",
		"card1.criteria1": "Knows: C++, Vala, JS/TS (including Node.JS), and/or HTML",
		"card1.criteria2": "Can use Docker and Git",
		"card1.criteria3": "Able to work with Linux systems",
		"card1.ending": "To apply, please join the Discord server and message the CEO or send us an E-Mail at {0}.",
		"card2": "Donating",
		"card2.text": "If you are unable to volunteer your time or your willing to donate, we are on multiple payment platforms. We are on {0}. Or you may find us on {1}."
	}
}
</i18n>
<script lang="ts">
import { Vue, Component } from 'vue-property-decorator'
import { mdiPatreon } from '@mdi/js'

@Component
export default class PageSupporting extends Vue {
	public readonly mdiPatreon: string = mdiPatreon

	head() {
		return {
			title: 'Support Us',
			meta: [
				{ hid: 'og:title', name: 'og:title', content: 'Support Us | Midstall Software' },
				{ hid: 'description', name: 'description', content: 'Midstall Software is in its infancy so we need all the help we can get.' },
				{ hid: 'og:description', name: 'og:description', content: 'Midstall Software is in its infancy so we need all the help we can get.' }
			]
		}
	}
}
</script>
