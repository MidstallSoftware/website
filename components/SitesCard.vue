<template>
	<v-card>
		<v-card-text>
			<p v-for="(link, index) in links" :key="index">
				<v-icon>mdi-{{ link.icon }}</v-icon>
				<a :href="link.href" class="text--primary">{{ link.title }}</a>
			</p>
		</v-card-text>
	</v-card>
</template>
<script>
export default {
	data() {
		return {
			links: [
				{ icon: 'discord', href: 'https://discord.com/invite/GVfBF2w', title: 'Server Invite' },
				{ icon: 'github', href: 'https://github.com/MidstallSoftware', title: '@MidstallSoftware' },
				{ icon: 'patreon', href: 'https://patreon.com/MidstallSoftware', title: '/MidstallSoftware' },
				{ icon: 'reddit', href: 'https://reddit.com/r/Midstall', title: '/r/Midstall' },
				{ icon: 'twitter', href: 'https://twitter.com/MidstallSW', title: '@MidstallSW' }
			].sort((a, b) => a.title.localeCompare(b.title))
		}
	}
}
</script>
