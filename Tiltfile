load('ext://deployment', 'deployment_create')
load('ext://restart_process', 'docker_build_with_restart')

k8s_yaml('./kube.yml')

docker_build_with_restart('ghcr.io/midstallsoftware/website', '.', 'npm run start', live_update=[
  sync('.', '/usr/src/nuxt-app'),
  run('npm i', trigger='package.json'),
], extra_tag='master')

deployment_create('midstall-website', 'ghcr.io/midstallsoftware/website:master', namespace='midstall', ports='5000')