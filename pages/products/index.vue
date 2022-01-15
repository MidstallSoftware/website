<template>
	<div style="padding-top: 25px">
		<v-row justify="center" align="start">
			<v-col cols="12" md="6" lg="6" xl="6">
				<v-parallax :src="require('~/assets/img/expidusos.png')">
					<v-row justify="left" align="end" style="margin-bottom: 25px">
						<v-col cols="3">
							<v-card>
								<v-card-title>{{ $t('product.expidusos.name') }}</v-card-title>
								<v-card-text>{{ $t('product.expidusos.caption') }}</v-card-text>
								<v-card-actions>
									<a href="/products/expidusos"><v-btn text color="teal accent-4">{{ $t('learn-more') }}</v-btn></a>
								</v-card-actions>
							</v-card>
						</v-col>
					</v-row>
				</v-parallax>
			</v-col>
		</v-row>
		<v-row class="d-none d-md-flex" justify="center" align="start">
			<v-col cols="12" md="6" lg="6" xl="6">
				<v-row justify="center" justify-md="start">
					<v-col cols="12" md="6" lg="6" xl="6">
						<h1 class="text-left">{{ $t('product.expidusos.block1') }}</h1>
					</v-col>
					<v-col cols="12" md="6" lg="6" xl="6">
						<h1 class="text-left">{{ $t('product.expidusos.block2') }}</h1>
					</v-col>
				</v-row>
			</v-col>
		</v-row>
		<v-row justify="center" align="start">
			<v-col cols="12" md="6" lg="6" xl="6">
				<v-row>
					<v-col cols="12" md="6" lg="6" xl="6">
						<v-card min-height="100%">
							<v-card-title>{{ $t('product.expidusos.block1.card1.title') }}</v-card-title>
							<v-card-text>{{ $t('product.expidusos.block1.card1.caption') }}</v-card-text>
							<v-card-actions>
								<a href="/products/expidusos#security"><v-btn text color="teal accent-4">{{ $t('learn-more') }}</v-btn></a>
							</v-card-actions>
						</v-card>
					</v-col>
					<v-col cols="12" md="6" lg="6" xl="6">
						<v-card min-height="100%">
							<v-card-title>{{ $t('product.expidusos.block2.card1.title') }}</v-card-title>
							<v-card-text>{{ $t('product.expidusos.block2.card1.caption') }}</v-card-text>
							<v-card-actions>
								<a href="/products/expidusos#compatibility"><v-btn text color="teal accent-4">{{ $t('learn-more') }}</v-btn></a>
							</v-card-actions>
						</v-card>
					</v-col>
				</v-row>
				<v-row>
					<v-col cols="12" md="6" lg="6" xl="6">
						<v-card min-height="100%">
							<v-card-title>{{ $t('product.expidusos.block1.card2.title') }}</v-card-title>
							<v-card-text>{{ $t('product.expidusos.block1.card2.caption') }}</v-card-text>
							<v-card-actions>
								<a href="/products/expidusos#security"><v-btn text color="teal accent-4">{{ $t('learn-more') }}</v-btn></a>
							</v-card-actions>
						</v-card>
					</v-col>
					<v-col cols="12" md="6" lg="6" xl="6">
						<v-card min-height="100%">
							<v-card-title>{{ $t('product.expidusos.block2.card2.title') }}</v-card-title>
							<v-card-text>{{ $t('product.expidusos.block2.card2.caption') }}</v-card-text>
							<v-card-actions>
								<a href="/products/expidusos#compatibility"><v-btn text color="teal accent-4">{{ $t('learn-more') }}</v-btn></a>
							</v-card-actions>
						</v-card>
					</v-col>
				</v-row>
			</v-col>
		</v-row>
		<v-row justify="center" align="start">
			<v-col cols="12" md="6" lg="6" xl="6">
				<v-parallax :src="require('~/assets/img/argama.png')">
					<v-row justify="left" align="end" style="margin-bottom: 25px">
						<v-col cols="3">
							<v-card>
								<v-card-title>{{ $t('product.argama.name') }}</v-card-title>
								<v-card-text>{{ $t('product.argama.caption') }}</v-card-text>
								<v-card-actions>
									<a href="/products/argama"><v-btn text color="teal accent-4">{{ $t('learn-more') }}</v-btn></a>
								</v-card-actions>
							</v-card>
						</v-col>
					</v-row>
				</v-parallax>
			</v-col>
		</v-row>
	</div>
</template>
<i18n>
{
	"en": {
		"product.expidusos.block1": "Reliable Design",
		"product.expidusos.block1.card1.title": "SELinux & AppArmor",
		"product.expidusos.block1.card1.caption": "With SELinux and AppArmor, ExpidusOS is designed to protect you and your data from many different kinds of threats.",
		"product.expidusos.block1.card2.title": "Open Source",
		"product.expidusos.block1.card2.caption": "Our source code to ExpidusOS is open, this means people can easily contribute their time into developing or fixing features and components of ExpidusOS.",
		"product.expidusos.block2": "Compatibility",
		"product.expidusos.block2.card1.title": "Windows and macOS",
		"product.expidusos.block2.card1.caption": "If you think ExpidusOS can't run your favorite Windows or macOS programs, we've got the support for you. ExpidusOS easily lets you install the compatibility layer for Windows and macOS applications without the need for rebooting. It's as simple as going to the application store and looking up \"Windows Compatibility Layer\" or \"macOS Compatibility Layer\" and clicking install.",
		"product.expidusos.block2.card2.title": "Android",
		"product.expidusos.block2.card2.caption": "ExpidusOS is even designed to allow Android applications to run with the installation of the \"Android Compatibility Layer\". This allows for the majority of Android applications ranging from office to games."
	}
}
</i18n>
<script>
export default {
	head: {
		title: 'Products',
		meta: [
      { hid: 'description', name: 'description', content: 'Software and other technology which Midstall Software is resposible for.' }
		]
	}
}
</script>
