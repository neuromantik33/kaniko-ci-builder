#!/busybox/sh

set -e

# https://docs.gitlab.com/ee/ci/docker/using_kaniko.html#building-a-docker-image-with-kaniko
mkdir -p /kaniko/.docker
cat <<EOF > /kaniko/.docker/config.json
{
  "auths": {
    \"$CI_REGISTRY\": {
      "username": \"$CI_REGISTRY_USER\",
      "password": \"$CI_REGISTRY_PASSWORD\"
    }
  }
}
EOF

# launch kaniko executor passing all arguments
exec /kaniko/executor "$@"
