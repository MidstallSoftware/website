docker_compose('./docker-compose.yml')

docker_build('ghcr.io/midstallsoftware/website', '.', live_update=[
  sync('.', '/usr/src/nuxt-app'),
  run('npm i', trigger='package.json'),
  restart_container()
], extra_tag='master')