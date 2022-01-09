<template>
	<div style="padding-top: 25px">
		<v-row justify="center" align="start">
			<v-col cols="12">
				<v-row justify="center" align="start">
					<h1 class="text-center" style="padding-bottom: 15px">History of Midstall Software</h1>
				</v-row>
			</v-col>
			<v-row justify="center" align="start">
				<v-col cols="12" md="8" lg="6" xl="4">
					<v-row style="padding-bottom: 15px">
						<v-card>
							<v-card-title>Beginning</v-card-title>
							<v-card-subtitle>Oct. 2020 - Jan. 2021</v-card-subtitle>
							<v-card-text>
								Midstall Software was created with the inception of ExpidusOS and both were created by Tristan Ross. Originally, ExpidusOS was going to be built on top of AwesomeWM and there were a few test builds utilizing it. The goal of ExpidusOS was to create an OS which can run on both phones and desktops under the same codebase. This is because many operating systems have to have seperate codebases for their mobile and desktop counterparts. Tristan Ross saw the potential with this operating system and brough on Travis Brinkert as a co-founder. Both would work together but Tristan would manage the software side of things. Travis would manage the business side of things during this period. As the early days rolled by, it was determined that AwesomeWM was insufficient with being able to provide what is needed to reach the goal. This is when XFCE4 was forked and modified to run better for phones. This eventually became known as "ExpidusOS Willamette v0.1.0-prealpha Test Release #1" and released towards the end of January of 2021. Over time, people looked at it and became interested in it.
							</v-card-text>
						</v-card>
					</v-row>
					<v-row style="padding-bottom: 15px">
						<v-card>
							<v-card-title>Genesis</v-card-title>
							<v-card-subtitle>Feb. 2021 - Nov. 2021</v-card-subtitle>
							<v-card-text>
								With the mild success of the first test release, it was determined that XFCE4 would be insufficient with reaching the goal that was set out by Tristan Ross. This sparked several prototyping designs, some used Mutter and some used Flutter on top of other window managers. During this time of prototyping, Carter Kelso and Nathan Ritchie was brough on. After several months, a successful design of the "ExpidusOS Shell" was found. This was known as "ExpidusOS Shell Iteration #4" which came to be known as the "Genesis Shell". The design of Genesis Shell is highly more advanced when compared to XFCE4. It features a module system which each module provides a monitor layout. The shell determines which monitor should get a particular layout based on which monitors each layout wants. Monitors can also be overridden by the user in testing cases or preference. Another feature of Genesis is that it is designed to run on Wayland, more specifically Wayfire. This means Genesis, by design, of Wayland only. However, it is planned that with either modules or checking the display backend could make it possible for Genesis to run on other display backends. Towards the end of the year, James Marcus Ross was brough on as a business advisor.
							</v-card-text>
						</v-card>
					</v-row>
					<v-row style="padding-bottom: 15px">
						<v-card>
							<v-card-title>The New Year</v-card-title>
							<v-card-subtitle>Dec. 2021 - <i>Now</i></v-card-subtitle>
							<v-card-text>
								With the new year coming around the corner, meetings with all the staff became regular. First it was every two weeks, eventually it became every week on a self-hosted Nextcloud server. The infrastructure running all of the company's websites and services were moved into one Linode instance and managed through Docker. All this would be proxied through Cloudflare to provide an extra layer of security. Over the course of the meetings, the ground-work was put into place to make Midstall Software into a successful company. A company E-Mail server was created, Nextcloud, and various other services. Coming to today, Midstall Software is in the process of becoming an LLC. This is a huge step towards becoming an actual company.
							</v-card-text>
						</v-card>
					</v-row>
				</v-col>
			</v-row>
		</v-row>
	</div>
</template>
<script>
export default {
	head: {
		title: 'History',
		meta: [
			{ hid: 'og:title', name: 'og:title', content: 'History | Midstall Software' },
      { hid: 'description', name: 'description', content: 'All the events from the inception of the company to the present.' },
			{ hid: 'og:description', name: 'og:description', content: 'All the events from the inception of the company to the present.' }
		]
	}
}
</script>
