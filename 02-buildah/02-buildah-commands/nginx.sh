image=$(buildah from docker.io/nginx:latest)
buildah run $image bash -c "echo \"Hello World\" > /usr/share/nginx/html/index.html"
buildah config --port 80 $image
buildah config --cmd '["nginx", "-g", "daemon off;"]' $image
buildah commit --format docker $image my-nginx-buildah:1.0
