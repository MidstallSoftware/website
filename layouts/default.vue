<template>
  <v-app dark>
		<v-app-bar class="d-md-block d-lg-block d-xl-block d-none" dense hide-on-scroll>
			<v-toolbar-title>Midstall Software</v-toolbar-title>
			<v-spacer />

			<a class="text--primary" href="/">
				<v-btn elevation="0">
					Home
				</v-btn>
			</a>

			<v-menu open-on-hover offset-y>
				<template v-slot:activator="{ on, attrs }">
					<a class="text--primary" href="/products">
						<v-btn elevation="0" v-bind="attrs" v-on="on">
							Products
						</v-btn>
					</a>
				</template>

				<v-list dense nav>
					<v-list-item link>
						<a class="text--primary" href="/products/expidus">
							ExpidusOS
						</a>
					</v-list-item>
					<v-list-item link>
						<a class="text--primary" href="/products/argama">
							Project Argama
						</a>
					</v-list-item>
				</v-list>
			</v-menu>

			<v-menu open-on-hover offset-y>
				<template v-slot:activator="{ on, attrs }">
					<a class="text--primary" href="/about">
						<v-btn elevation="0" v-bind="attrs" v-on="on">
							About
						</v-btn>
					</a>
				</template>

				<v-list dense nav>
					<v-list-item link>
						<a class="text--primary" href="/about/history">
							History
						</a>
					</v-list-item>
					<v-list-item link>
						<a class="text--primary" href="/about/team">
							Team
						</a>
					</v-list-item>
				</v-list>
			</v-menu>
		</v-app-bar>
		<v-app-bar class="d-sm-block d-md-none d-lg-none d-xl-none d-block" dense hide-on-scroll>
			<v-app-bar-nav-icon @click="drawer = !drawer" />
			<v-toolbar-title>Midstall Software</v-toolbar-title>
		</v-app-bar>
		<v-navigation-drawer v-model="drawer" absolute temporary>
			<v-list dense nav>
				<v-list-item link>
					<v-list-item-content>
						<a class="text--primary" href="/">
							<v-btn elevation="0">
								Home
							</v-btn>
						</a>
					</v-list-item-content>
				</v-list-item>
				<v-list-item link>
					<v-list-group>
						<template v-slot:activator>
							<v-list-item-content>
								<v-list-item-title>Products</v-list-item-title>
							</v-list-item-content>
						</template>
						<v-list-item link>
							<a class="text--primary" href="/products/expidus">
								ExpidusOS
							</a>
						</v-list-item>
						<v-list-item link>
							<a class="text--primary" href="/products/argama">
								Project Argama
							</a>
						</v-list-item>
					</v-list-group>
				</v-list-item>
				<v-list-item link>
					<v-list-group>
						<template v-slot:activator>
							<v-list-item-content>
								<v-list-item-title>About</v-list-item-title>
							</v-list-item-content>
						</template>
						<v-list-item link>
							<a class="text--primary" href="/about/history">
								History
							</a>
						</v-list-item>
						<v-list-item link>
							<a class="text--primary" href="/about/team">
								Team
							</a>
						</v-list-item>
					</v-list-group>
				</v-list-item>
			</v-list>
		</v-navigation-drawer>
		<v-main>
			<Nuxt />
		</v-main>
    <v-footer absolute app>
			<v-card flat tile class="text-center" width="100%">
				<div class="d-inline">
					<v-card-text class="d-inline">
						<a class="text--primary mx-4" href="/open-source">
							<v-btn elevation="0">
								Open Source
							</v-btn>
						</a>
					</v-card-text>
					<v-card-text class="d-inline">
						<a class="text--primary mx-4" href="/jobs">
							<v-btn elevation="0">
								Jobs
							</v-btn>
						</a>
					</v-card-text>
					<v-card-text class="d-inline">
						<a class="text--primary mx-4" href="/contact">
							<v-btn elevation="0">
								Contact
							</v-btn>
						</a>
					</v-card-text>

					<v-divider />
		      <v-card-text class="text--primary">
						&copy; {{ new Date().getFullYear() }} - Midstall, LLC
					</v-card-text>
				</div>
			</v-card>
    </v-footer>
  </v-app>
</template>
<script>
export default {
	data() {
		return { drawer: false }
	}
}
</script>
