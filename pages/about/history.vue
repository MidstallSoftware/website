<template>
  <v-row justify="center" align="center" style="padding-top: 20px">
		<v-col cols="6" xs="12" sm="12" md="6" lg="6" xl="6">
			<v-card>
				<v-card-title>History of Midstall Software</v-card-title>
				<v-card-text>
					Midstall Software was created when Tristan Ross decided to create an operating system that would work on both phones and desktops alike. This was back in October of 2020 while Mr. Ross was half way through his final year of high school. Shortly after starting the project, it was named ExpidusOS and Travis Brinkert was brought on board. He spent months developing prototypes which the first operational one became ExpidusOS <i>0.1.0-prealpha Test Release #1</i>. Almost a year was spent on prototyping even further until fall 2021 when ExpidusOS's Genesis Shell went into development to replace ExpidusOS Shell. One noticable difference from ExpidusOS Shell is the lack of X11 support, not including XWayland. This means Genesis Shell would be compositing under Wayland only but has the compatibility for X11 applications with the help of XWayland. Since then more people have been brought on to ease certain tasks off Tristan's shoulders.
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
      { hid: 'description', name: 'description', content: 'About Midstall Software' }
		]
	}
}
</script>
