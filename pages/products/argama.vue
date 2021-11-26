<template>
	<v-row justify="center" align="center">
		<v-col cols="12" style="padding-bottom: 0">
			<v-parallax :src="require('~/assets/img/argama.png')">
				<v-row align="center">
					<v-col cols="6" sm="4" md="3">
						<v-card>
							<v-card-title>Introducing Project Argama</v-card-title>
							<v-card-text>
								<p>A cloud powered ecosystem which integrates with ExpidusOS.</p>
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
		title: 'Project Argama'
	}
}
</script>
