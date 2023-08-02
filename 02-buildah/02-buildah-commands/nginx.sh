container=$(buildah from docker.io/nginx:latest)
buildah run $container bash -c "echo \"Hello World\" > /usr/share/nginx/html/index.html"
buildah config --port 80 $container
buildah config --cmd '["nginx", "-g", "daemon off;"]' $container
buildah commit --format docker $container my-nginx-buildah:1.0
