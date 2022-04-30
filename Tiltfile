load('ext://deployment', 'service_yaml')
load('ext://restart_process', 'docker_build_with_restart')

docker_build_with_restart('ghcr.io/midstallsoftware/website', '.', 'npm run start', live_update=[
  sync('assets', '/usr/src/nuxt-app/pages'),
  sync('layouts', '/usr/src/nuxt-app/pages'),
  sync('pages', '/usr/src/nuxt-app/pages'),
  sync('static', '/usr/src/nuxt-app/pages'),
  sync('store', '/usr/src/nuxt-app/pages'),
  sync('package.json', '/usr/src/nuxt-app/pages'),
  sync('nuxt.config.js', '/usr/src/nuxt-app/pages'),
  run('npm i', trigger='package.json'),
], extra_tag='master')

k8s_yaml('./kube/deploy.yml')
k8s_yaml('./kube/service.yml')

k8s_yaml(service_yaml('midstall-website-node', 'NodePort', namespace='midstall', ports=['80']))