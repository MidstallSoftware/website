<template>
  <v-row justify="center" align="center" style="padding-top: 20px">
		<v-col cols="12" sm="12" md="6" lg="3" xl="3">
			<v-card>
				<v-card-title>Tristan Ross</v-card-title>
				<v-card-text>
					<p>Hello, I am one of the original founders of this company. I started this back in October of 2020 and brough my good friend and business partner, Travis, on board. I am largely responsible for the vision of ExpidusOS and making it possible.</p>
					<p>E-Mail: <a href="mailto:tristan.ross@midstall.com" class="text--primary">tristan.ross@midstall.com</a></p>
					<p>Online Username: The Computer Guy</p>
					<v-img :src="require('~/assets/img/team/tristan.jpg')" aspect-ratio="1.7"></v-img>
				</v-card-text>
			</v-card>
		</v-col>
		<v-col cols="12" sm="12" md="6" lg="3" xl="3">
			<v-card>
				<v-card-title>Travis Brinkhert</v-card-title>
				<v-card-text>
					<p>E-Mail: <a href="mailto:travis.brinkhert@midstall.com" class="text--primary">travis.brinkhert@midstall.com</a></p>
					<p>Online Username: drag0</p>
					<v-img :src="require('~/assets/img/team/travis.jpg')" aspect-ratio="1.7"></v-img>
				</v-card-text>
			</v-card>
		</v-col>
		<v-col cols="12" sm="12" md="6" lg="3" xl="3">
			<v-card>
				<v-card-title>Nathan Ritchie</v-card-title>
				<v-card-text>
					<p>I have worked on Midstall projects off-and-on for about a year. I work on design/web stuff and make UI concepts. </p>
					<p>Online Username: ctaetcsh</p>
					<p>Personal Website: <a href="https://ctaetcsh.com" class="text--primary" >ctaetcsh.com</a></p>
				</v-card-text>
			</v-card>
		</v-col>
		<v-col cols="12" sm="12" md="6" lg="3" xl="3">
			<v-card>
				<v-card-title>Carter Kelso</v-card-title>
				<v-card-text>
					<p>Online Username: Oof Large</p>
				</v-card-text>
			</v-card>
		</v-col>
		<v-col cols="12" sm="12" md="6" lg="3" xl="3">
			<v-card>
				<v-card-title>James Marcus Ross</v-card-title>
				<v-card-text>
					<p>E-Mail: <a href="mailto:james.marcus.ross@midstall.com" class="text--primary">james.marcus.ross@midstall.com</a></p>
				</v-card-text>
			</v-card>
		</v-col>
	</v-row>
</template>
<script>
export default {
	head: {
		title: 'About',
		meta: [
      { hid: 'description', name: 'description', content: 'About the team who runs Midstall Software' }
		]
	}
}
</script>
