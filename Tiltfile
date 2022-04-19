load('ext://deployment', 'deployment_create')
load('ext://restart_process', 'docker_build_with_restart')

docker_build_with_restart('ghcr.io/midstallsoftware/website', '.', 'npm run start', live_update=[
  sync('.', '/usr/src/nuxt-app'),
  run('npm i', trigger='package.json'),
], extra_tag='master')

k8s_yaml('./kube/deploy.yml')
k8s_yaml('./kube/service.yml')
